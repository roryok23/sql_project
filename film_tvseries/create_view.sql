 CREATE OR REPLACE FORCE VIEW "FILM_TVSERIES"."TVSERIES_VIEW" ("TITLE") AS 
  select title from catalog
     where tv_series = 'Yes';