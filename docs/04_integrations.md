MVP integrations

Embedder

Purpose: generate embeddings for chunks and queries

Requirements: stable model name/version stored with vectors

Testing: mock embed calls; deterministic fake vectors

Vector store (local-first)

Purpose: similarity search + metadata filtering

Requirements: persistence on disk, upsert by chunk_id, filter by tenant_id/scope

Testing: in-memory implementation for unit tests

LLM

Purpose: generate answer text constrained to provided chunks

Requirements: structured output + citations list; refusal behavior if insufficient grounding

Testing: mock LLM responses

v1 integrations

Scheduler (OS Task Scheduler / cron-like) that triggers ingestion, but does not implement ingestion logic.