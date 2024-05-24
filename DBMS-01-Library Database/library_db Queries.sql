#1. 
select b.book_id,b.Title,b.Publisher_Name,a.Author_name,c.no_of_Copies,l.Programme_id
from book b,Book_Authors a,book_copies c,library_programme l
where b.book_id=a.book_id and
b.book_id=c.book_id and
l.Programme_id=c.Programme_id;

#2. 
select card_no
from book_lending
where date_out between 'jan_2017' and 'jun_2017' 
group by card_no having count(*)>3;

#3. 
delete from book
where book_id=3;

#4. 
CREATE TABLE BOOKPARTITION
( BOOK_ID INTEGER,
PUB_YEAR INTEGER,
PUBLISHER_NAME VARCHAR(20))
PARTITION BY RANGE (PUB_YEAR)
(PARTITION P0 VALUES LESS THAN (2000),
PARTITION P1 VALUES LESS THAN (2005),
PARTITION P2 VALUES LESS THAN (2010));

#5.
create view V_book1 as
select b.book_id,c.no_of_copies
from book b,Book_copies c,library_programme l
where b.book_id=c.book_id and
c.programme_id=l.programme_id;