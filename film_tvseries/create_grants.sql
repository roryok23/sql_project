grant all privileges to film_tvseries_admin_role;
grant select, update on film_tvseries.catalog to film_tvseries_member_role;
grant select on film_tvseries.catalog to film_tvseries_guest_role;

grant film_tvseries_admin_role to film_tvseries_admin;
grant film_tvseries_member_role to film_tvseries_member;
grant film_tvseries_guest_role to film_tvseries_guest;