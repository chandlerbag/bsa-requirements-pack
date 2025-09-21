-- sql_validation_stub.sql
-- Post-release validations

-- 1) % of tickets with NULL category should be 0%
SELECT COUNT(*) AS null_categories
FROM tickets
WHERE category IS NULL;

-- 2) SLA breach rate weekly
SELECT strftime('%Y-%W', created_ts) AS week,
       AVG(CASE WHEN (strftime('%s', first_triage_ts) - strftime('%s', created_ts)) > 86400 THEN 1 ELSE 0 END) AS breach_rate
FROM tickets
GROUP BY week;

-- 3) Duplicates closed vs overrides
SELECT
  SUM(CASE WHEN closed_as_duplicate=1 THEN 1 ELSE 0 END) AS closed_dupes,
  SUM(CASE WHEN override_duplicate=1 THEN 1 ELSE 0 END) AS overrides
FROM tickets;
