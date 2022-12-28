--create roles
create role film_tvseries_admin_role;
create role film_tvseries_member_role;
create role film_tvseries_guest_role;

--creaet users
create user film_tvseries identified by password default tablespace film_tvseries_tblspace;
create user film_tvseries_admin identified by password;
create user film_tvseries_member identified by password;
create user film_tvseries_guest identified by password;

--grant sessions 
grant create session, connect, resource, dba to film_tvseries;
grant create session, connect, resource to film_tvseries_admin;
grant create session to film_tvseries_member;
grant create session to film_tvseries_guest;

--allow our library user to have permission to create objects on the tablespace
alter user film_tvseries quota 100M on film_tvseries_tblspace;
grant unlimited tablespace to film_tvseries;