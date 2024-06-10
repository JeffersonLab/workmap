alter session set container = XEPDB1;

ALTER SYSTEM SET db_create_file_dest = '/opt/oracle/oradata';

create tablespace WORKMAP;

create user "WORKMAP_OWNER" profile "DEFAULT" identified by "password" default tablespace "WORKMAP" account unlock;

grant connect to WORKMAP_OWNER;
grant unlimited tablespace to WORKMAP_OWNER;

grant create view to WORKMAP_OWNER;
grant create sequence to WORKMAP_OWNER;
grant create table to WORKMAP_OWNER;
grant create procedure to WORKMAP_OWNER;
grant create type to WORKMAP_OWNER;