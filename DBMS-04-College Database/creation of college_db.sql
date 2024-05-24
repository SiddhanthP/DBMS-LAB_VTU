create database college;
use college;

create table student(
usn varchar(10) primary key,
Sname varchar(20),
Address varchar(10),
Phone varchar(10),
gender varchar(1));

create table SemSec(
SSID varchar(10) primary key,
Sem int,
Sec varchar(5));

create table Class(
Usn varchar(10),
foreign key (Usn) references student(usn) on delete cascade,
SSID varchar(10), 
foreign key (SSID) references SemSec(SSID) on delete cascade);

create table Subject(
Subcode varchar(10) primary key,
Title varchar(10),
Sem int,
Credits int);

create table IAMARKS(
Usn varchar(10),
foreign key (Usn) references student(usn) on delete cascade,
Subcode varchar(10),
foreign key (Subcode) references Subject (Subcode) on delete cascade,
SSID varchar(10), 
foreign key (SSID) references SemSec(SSID) on delete cascade,
test1 int,
test2 int,
test3 int,
FinalIA int);


insert into Student values("1BI15CS101","sid","bangalore","9743380245","M");
insert into Student values("1BI15CS102","sonu","delhi","9743380246","M");
insert into Student values("1BI15CS103","shreya","bangalore","9743380247","F");
insert into Student values("1BI15CS104","shilpa","pune","9743380248","F");
insert into Student values("1BI15CS105","rahul","Mumbai","9743380249","M");

insert into SemSec values("CSE4C",4,"C");
insert into SemSec values("ISE4C",4,"C");
insert into SemSec values("CSE5B",5,"B");
insert into SemSec values("ECE1A",1,"A");
insert into SemSec values("CSE2A",2,"A");

INSERT INTO CLASS VALUES("1BI15CS101","CSE4C");
INSERT INTO CLASS VALUES("1BI15CS104","CSE4C");
INSERT INTO CLASS VALUES("1BI15CS105","CSE2A");
INSERT INTO CLASS VALUES("1BI15CS101","CSE4C");
INSERT INTO CLASS VALUES("1BI15CS102","CSE2A");

INSERT INTO SUBJECT values("21CS51","CO",4,4);
INSERT INTO SUBJECT values ("21CS42","ATC",5,3);
INSERT INTO SUBJECT values ("21CS53","CN",4,4);
INSERT INTO SUBJECT values ("21CS31","MAT",3,2);
INSERT INTO SUBJECT values ("21CS32","AIML",3,2);

insert into IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3)values("1BI15CS101","21CS51","CSE5B",10,12,14);
insert into IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3)values("1BI15CS102","21CS53","CSE4C",8,12,14);
insert into IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3)values("1BI15CS103","21CS51","ECE1A",14,16,18);
insert into IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3)values("1BI15CS104","21CS51","CSE2A",11,13,17);
insert into IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) values("1BI15CS104","21CS53","CSE5B",10,16,14);
