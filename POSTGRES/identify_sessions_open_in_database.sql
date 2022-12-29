select query,
       pid as process_id, 
       usename as username, 
       datname as database_name, 
       client_addr as client_address, 
       application_name,
       backend_start,
       state,
       state_change
from pg_stat_activity
WHERE application_name like '%JDBC%' and
      client_addr <> '127.0.0.1'
Order by process_id	  
