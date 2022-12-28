Create Sequence film_tvseriesSequence noCache;

INSERT INTO film_tvseries.catalog
(film_tvseries_id, title, genre, rating, actor, director, available_until, tv_series, film)
Values
(film_tvseriesSequence.nextval, 'Die Hard', 'Action', '15a', 'Bruce Willis', 'John McTiernan', date '2020-12-24', 'No', 'Yes');

commit;


INSERT INTO film_tvseries.catalog
(film_tvseries_id, title, genre, rating, actor, director, available_until, tv_series, film)
Values
(film_tvseriesSequence.nextval, 'The Sopranos', 'Drama', '15a', 'James Gandolfini', null, date '2021-03-12', 'Yes', 'No');

commit;

INSERT INTO film_tvseries.member
(email, fname, lname, dob, join_date, membership_plan, membership_price, address, credit_card_no, member_until, auto_renew_member)
Values
('rorytokeeffe@gmail.com', 'Rory', 'OKeeffe', date '1986-07-15', current_timestamp, 'Full', 9.99, '11 Ennis Grove', 0000111100000004, current_timestamp + 30, 'Yes');

commit;

