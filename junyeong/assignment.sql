CREATE DATABASE example;
use example;
CREATE TABLE 고객(
고객번호 varchar(255),
이름 varchar(255),
주소 varchar(255),
primary key(고객번호)
);
CREATE TABLE 극장(
극장번호 varchar(255),
극장이름 varchar(255),
극장위치 varchar(255),
primary key(극장번호)
);
CREATE TABLE 예약(
예약번호 varchar(255),
극장번호 varchar(255),
고객번호 varchar(255),
foreign key(극장번호) references 극장 (극장번호),
foreign key(고객번호) references 고객 (고객번호),
primary key(예약번호)
);
INSERT INTO 극장(
극장번호,극장이름,극장위치)
values('1','CGV','부천'),('2','CGV','역곡'),('3','롯데시네마','강남');
INSERT INTO 고객(
고객번호,이름,주소)
values('A','안준영','오류동'),('B','김동균','부평'),('C','최인호','일산');
INSERT INTO 예약(
예약번호,극장번호,고객번호)
values('001','1','B'),('002','3','A'),('003',고객,'2','C');

select * FROM 예약;

select distinct * from 예약
left join 극장
on 예약.극장번호 = 극장.극장번호;

select distinct * from 예약
left join 고객
on 예약.고객번호 = 고객.고객번호;
