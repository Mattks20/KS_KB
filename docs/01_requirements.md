Inputs (MVP)

Local folder paths (configured)

Supported types (v0): .md, .txt

Optional (v1): .pdf, .docx

Metadata captured: file path, modified time, size, hash

User queries (web UI)

query_text

mode: "answer" (MVP)

optional filters: source path(s), recency window, tags

Voice capture (v1)

A small set of user-written samples OR selected docs to use as style reference

Stored as “style profile,” not as factual evidence

Outputs (MVP)

Grounded answer

Answer text

Citations (chunk-level): source file, path, snippet, chunk_id, score

If insufficient evidence: explicit “not found” response + what to ingest next

Query trace (optional but recommended)

retrieved chunk list and scores

timestamp and config used

Acceptance Criteria (MVP)

Ingest local folder(s) and create a searchable index.

Query returns top-k relevant chunks and generates an answer that cites chunks.

If retrieval confidence is low, system refuses to guess and says “not found.”

UI supports: ingest now, query, view citations.

Storage is partitioned by tenant_id even if tenant_id defaults to personal.

Tests exist for: chunking, dedupe/idempotency, retrieval selection, response formatting.

Out of Scope (MVP)

Gmail/LinkedIn ingestion

Multi-user auth/login

Background scheduler (can be added after manual ingestion is stable)