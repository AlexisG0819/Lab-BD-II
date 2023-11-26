--create login [soporte] with password= 'root', default_database =[master], check_policy = off
select *from sys.sql_logins
exec sp_addsrvrolemember 'soporte', 'sysadmin'

select l.name as login_name, r.name as role_name
from sys.server_principals l
	inner join sys.server_role_members m on l.principal_id = m.member_principal_id
	inner join sys.server_principals r on m.role_principal_id = r.principal_id