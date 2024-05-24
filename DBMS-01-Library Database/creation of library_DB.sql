create database library_db;
use library_db;

create table BOOK(
Book_id int primary key,
Title varchar(20),
Publisher_Name varchar(20),
foreign key (Publisher_Name) references PUBLISHER (Name),
Publisher_year varchar(20));

create table BOOK_AUTHORS(
Book_id int,
foreign key (Book_id) references BOOK (Book_id),
Author_name varchar(20));

insert into PUBLISHER values("oxford","bangalore","9743380212");
insert into PUBLISHER values("pearson","pune","9743380213");
insert into PUBLISHER values("MCgrawhill","Chennai","9743380214");
insert into PUBLISHER values("RANDOM HOUSE","delhi","9743380215");
insert into PUBLISHER values("HACHETTE LIVRE","bangalore","9743380216");

insert into BOOK values(1,"DBMS","oxford","2011");
insert into BOOK values(2,"ATC","MCgrawhill","2013");
insert into BOOK values(3,"AIML","pearson","2010");
insert into BOOK values(4,"Cn","MCgrawhill","2015");
insert into BOOK values(5,"OS","pearson","2008");

insert into BOOK_AUTHORS values(1,"navate");
insert into BOOK_AUTHORS values(2,"navate");
insert into BOOK_AUTHORS values(3,"vijaylakshmi");
insert into BOOK_AUTHORS values(4,"tanenbaum");
insert into BOOK_AUTHORS values(5,"peter galvin");

insert into LIBRARY_PROGRAMME values(10,"vijaynagar","Mysore");
insert into LIBRARY_PROGRAMME values(11,"RRNAGAR","bangalore");
insert into LIBRARY_PROGRAMME values(12,"Jayanagar","Udupi");
insert into LIBRARY_PROGRAMME values(13,"Srinagar","mangalore");
insert into LIBRARY_PROGRAMME values(14,"vijaynagar","bangalore");

insert into BOOK_COPIES values(1,10,100);
insert into BOOK_COPIES values(2,12,50);
insert into BOOK_COPIES values(3,11,150);
insert into BOOK_COPIES values(5,13,75);
insert into BOOK_COPIES values(2,14,200);
insert into BOOK_COPIES values(4,10,250);
insert into BOOK_COPIES values(1,11,175);
insert into BOOK_COPIES values(3,13,300);

insert into BOOK_LENDING values(1,10,101,"jan_2017","jun_2017");
insert into BOOK_LENDING values(2,12,102,"jun_2018","Aug_2018");
insert into BOOK_LENDING values(3,11,103,"feb_2017","Mar_2017");
insert into BOOK_LENDING values(5,13,104,"jan_2018","jun_2018");
insert into BOOK_LENDING values(2,14,105,"jan_2017","jun_2017");
insert into BOOK_LENDING values(4,10,106,"jan_2019","jun_2019");
insert into BOOK_LENDING values(1,11,107,"feb_2019","jun_2019");
insert into BOOK_LENDING values(1,12,108,"jan_2017","jun_2017");
insert into BOOK_LENDING values(2,11,108,"jan_2017","jun_2017");
insert into BOOK_LENDING values(4,10,108,"jan_2017","jun_2017");
insert into BOOK_LENDING values(5,14,108,"jan_2017","jun_2017");