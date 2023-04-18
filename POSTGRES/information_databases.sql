SELECT
  *
FROM pg_database AS d
INNER JOIN pg_user AS u ON (d.datdba = u.usesysid)
