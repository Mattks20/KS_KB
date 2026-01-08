Workflow A: Ingest Documents (manual trigger, MVP)

User triggers “Ingest Now.”

Scanner enumerates supported files under configured folder(s).

For each file:

Compute doc_id deterministically (tenant_id + normalized path + content hash).

If unchanged since last ingest, skip.

Extract text + metadata.

Normalize text (whitespace, encoding).

Chunk text into stable chunks (chunk_id based on doc_id + offsets).

Embed chunks (batch if possible).

Upsert into vector store with metadata:

tenant_id, visibility_scope, doc_id, chunk_id, path, modified_at

Produce ingestion summary (files scanned / indexed / skipped / failed).

Workflow B: Query → Answer (MVP)

User submits question.

Embed query.

Retrieve top-k chunks filtered by tenant_id + scope.

Apply retrieval policy:

if best score < threshold → “not found” response

Compose grounded prompt with:

question

retrieved chunks + metadata

strict instruction: cite sources, no guessing

LLM returns structured response:

answer_text

citations list (chunk_id references)

UI displays answer + citations with snippets and file links.

Workflow C: Scheduled Ingestion (v1)

A scheduler runs Workflow A on an interval (e.g., every 6 hours).

Must call the same ingestion function (no duplicate logic).

Failure Modes

File read error → skip file, log, continue.

Embedding failure → retry limited, then fail ingestion with actionable message.

Vector store error → fail fast; do not partially commit without reporting.

LLM returns uncited claims → reject and return “insufficient grounding.”