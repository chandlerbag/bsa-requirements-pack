# Business Requirements Document - Internal Ticketing Enhancements

## Problem
Engineering cannot easily prioritize defects vs. small features; duplicate tickets inflate WIP; reporting is manual and inconsistent

## Objectives/KPIs
- Reduce duplicate tickets by **40%** within 60 days of release
- Improve **time to triage** to **<24h**
- Provide weekly **auto-report** (defects vs. enhancements, by squad)

## Scope (In)
- Duplicate detection (title/description similarity)
- Category/subcategory normalization with controlled vocabulary
- SLA timer for triage; alerting and simple dashboard

## Scope (Out)
- Third-party integrations
- Mobile client

## Stakeholders
- Engineering Manager (Sponsor)
- PMO Analyst
- QA Lead
- Data/Reporting

## High-Level Requirements
1. Auto-flag potential duplicates using title+description similarity
2. Mandatory category/subcategory with dependent picklists
3. SLA timer: creation &rarr; first-human-triage under 24h with alerts
4. Weekly auto-report available by squad and type (defect/enhancement)

## Risks & Mitigations
- **False positives in duplicate detection** &rarr; adjustable threshold, override with reason
- **Adoption friction** &rarr; defaulted fields, inline helper text, short enablement video

## Success Measures
- Baseline vs post-release metrics: duplicate rate, time to triage, SLA breach rate