create database MOvie;
use movie;

create table Actor(
Act_id int primary key,
act_name varchar(20),
act_gender varchar(1));

create table Director(
Dir_id int primary key,
Dir_name varchar(20),
Dir_phone varchar(11));

create table Movies(
Mov_id int primary key,
Mov_title varchar(20),
Mov_year date,
Mov_lang varchar(20),
Dir_id int,
foreign key (Dir_id) references Director(Dir_id) on delete cascade);

create table Movie_cast(
Act_id int,
foreign key (Act_id) references Actor(Act_id) on delete cascade,
Mov_id int,
foreign key (Mov_id) references Movies(Mov_id) on delete cascade,
Role varchar(10));

create table Rating(
Mov_id int,
foreign key (Mov_id) references Movies(Mov_id) on delete cascade,
Rev_stars int);

insert into Actor values(1,"sid","M");
insert into Actor values(2,"sonu","M");
insert into Actor values(3,"manu","M");
insert into Actor values(4,"harshita","F"); 
insert into Actor values(5,"shreya","F");


insert into Director values(10,"Hitchcock","9743380214");
insert into Director values(11,"shreyas","9743380215");
insert into Director values(12,"Hitchcock","9743380216");
insert into Director values(13,"rahul","9743380217");
insert into Director values(14,"nandu","9743380218");

insert into movies values(101,"ABCD",'2016-01-01',"hindi",10);
insert into movies values(102,"ABCD-2",'2018-01-01',"hindi",10);
insert into movies values(103,"KGF",'2012-01-01',"kannada",11);
insert into movies values(104,"KGF-2",'2014-01-01',"kannada",11);
insert into movies values(105,"RRR",'1998-01-01',"Telugu",13);

insert into movie_cast values(1,102,"hero");
insert into movie_cast values(2,101,"villian");
insert into movie_cast values(3,104,"hero");
insert into movie_cast values(4,105,"heroine");
insert into movie_cast values(5,102,"sister");

insert into movie_cast values(5,104,"mother");
insert into movie_cast values(2,103,"brother");

insert into rating values(101,3);
insert into rating values(102,4);
insert into rating values(103,5);
insert into rating values(104,4);
insert into rating values(105,2);