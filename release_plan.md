# Release Plan (2 Sprints)

## MVP Scope (Sprint 1 + 2)
- US-01 Duplicate detection (baseline)
- US-02 Controlled categories
- US-03 Triage SLA alert
- US-07 Required fields
- US-06 Weekly report (basic)

## Out of MVP (later)
- US-05 Similarity threshold configurability
- US-08 Accessibility refinements
- US-09 Performance tuning
- US-10 Data export
- US-11 Backfill
- US-12 Help text

## Sprint Plan
### Sprint 1 (2 weeks)
- Implement US-02, US-07
- Implement basic US-01 (exact/near-exact title match)
- Add schema + audit log table (prep for US-04)
- QA: unit + basic UAT

### Sprint 2 (2 weeks)
- Enhance US-01 with fuzzy similarity (e.g., trigram TF-IDF)
- Implement US-03 (SLA, alerts) and US-06 (weekly report basic)
- QA: UAT pass, performance sanity, release

## Definition of Ready
- Story has acceptance criteria, UX notes, data fields, and negative cases

## Definition of Done
- ACs pass; tests added; monitoring in place; docs updated; demo recorded

## Risks & Mitigations
- False positives &rarr; threshold + override
- Alert fatigue &rarr; batch alerts hourly; configurable quiet hours
- Adoption &rarr; defaulted values; quick training Loom video