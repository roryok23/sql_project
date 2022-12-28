create tablespace film_tvseries_tblspace
    datafile 'film_tvseries_admin.dat'
    size 100M reuse;
    
    
--create user library identified by password;
--alter user library quota unlimited on system;
--grant create session, connect, resource, dba to library;
--grant all privileges to library;