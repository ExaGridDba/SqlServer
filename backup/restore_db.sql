exec msdb.dbo.rds_restore_database
@restore_db_name='Brian',
@s3_arn_to_restore_from='arn:aws:s3:::sqlbkgdt/backup/Brian.bak';

