--drop synonyms
drop synonym film_tvseries_admin.catalog;
drop synonym film_tvseries_admin.member;
drop synonym film_tvseries_admin.plan;

drop synonym film_tvseries_member.catalog;
drop synonym film_tvseries_guest.catalog;

--drop constraints
alter table film_tvseries.plan
drop constraint fk_member;

--alter table film_tvseries.plan
--drop constraint fk_catalog;

--drop tables
drop table film_tvseries.catalog;
drop table film_tvseries.member;
drop table film_tvseries.plan;

--clean up script
drop tablespace film_tvseries_tblspace 
including contents 
cascade constraints;

--drop roles
drop role film_tvseries_admin_role;
drop role film_tvseries_member_role;
drop role film_tvseries_guest_role;


--drop users
drop user film_tvseries cascade;
drop user film_tvseries_admin cascade;
drop user film_tvseries_member cascade;
drop user film_tvseries_guest cascade;





