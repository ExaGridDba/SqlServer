select 
-- top 1 
database_name
, bs.type
, bs.backup_start_date
, bs.backup_finish_date 
-- , bs.*
from    msdb.dbo.backupset bs
where   database_name='Brian'
and     type = 'D' 
order by bs.backup_start_date desc;


EXEC msdb.dbo.rds_task_status @task_id = 8;

