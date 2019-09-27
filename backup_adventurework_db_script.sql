DECLARE @BackupName varchar(1000)
SELECT @BackupName = (SELECT 'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\' + convert(varchar(500),GetDate(),112) + '_' + format(getdate(), 'hhmmss') + '_AdventureWorks_full_backup.bak') 
--print @BackupName
--BACKUP DATABASE [myDB] TO DISK=@MyFileName 
BACKUP DATABASE [AdventureWorks] TO  
DISK = @BackupName
WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorks-Full Database Backup', SKIP, STATS = 10
GO