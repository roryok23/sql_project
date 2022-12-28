create table film_tvseries.catalog(
    film_tvseries_id number not null primary key,
    title varchar2(100) not null,
    genre varchar2(100) not null,
    rating varchar2(30) not null,
    actor varchar2(80) not null,
    director varchar2(80), 
    available_until date,
    tv_series varchar2(10),
    film varchar2(10)
);


/*
 insert into catalog_audit_title(title, operation, op_date, by_user)
   values (:new.title, 'Inserting', sysdate, user);
*/
/*create table catalog_audit_title(
	title varchar2(100),
	operation varchar2(100),
	op_date date,
	by_user varchar2(100)


);
*/


create table film_tvseries.member(
    email varchar2(80) not null primary key,
    fname varchar2(30) null,
    lname varchar2(30) null,
    dob date,
    join_date date,
    membership_plan varchar2(10) not null,
    membership_price NUMBER(4,2) null,	
    address varchar2(100) not null,
    credit_card_no long,
    member_until date,
    auto_renew_member varchar2(10));

create table film_tvseries.plan(plan_id number primary key,
    date_valid_until date not null,
    email varchar2(80) not null,
    genre varchar2(100) not null,
    --membership_plan varchar2(10) not null
    free_trial varchar2(10) not null
    --film_tvseries_id number not null
    --tv_series varchar2(10)
    --film varchar2(10)

);

alter table film_tvseries.plan
add constraint fk_member
    foreign key (email)
    references film_tvseries.member(email);
    
    
--alter table film_tvseries.plan
--add constraint fk_catalog
    --foreign key (genre)
    --references film_tvseries.catalog(genre);    