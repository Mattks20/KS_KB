Foundational fields (every stored record):

tenant_id (default "personal")

visibility_scope (default "personal")

Core objects:

Document

doc_id, tenant_id, path, title, modified_at, content_hash, mime_type

Chunk

chunk_id, doc_id, tenant_id, text, start_offset, end_offset, token_count

VectorRecord

chunk_id, tenant_id, vector, embedding_model, created_at

metadata: path, modified_at, visibility_scope

QueryRequest

tenant_id, query_text, top_k, mode, filters

RetrievedChunk

chunk_id, doc_id, path, score, text_snippet

GroundedAnswer

answer_text

citations[]: list of {chunk_id, path, snippet}

VoiceProfile (v1, separate store)

tenant_id

style_samples (references)

style_rules (generated summary)

Note: never used as “evidence,” only as “tone guidance”