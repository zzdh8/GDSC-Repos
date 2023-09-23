CREATE DATABASE HOMEWORK ;
use HOMEWORK;
CREATE TABLE 극장 (
극장번호 VARCHAR(20) ,
극장이름 VARCHAR(20),
위치 VARCHAR(20),
PRIMARY KEY(극장번호));

CREATE TABLE 고객 (
고객번호 VARCHAR(20) ,
고객이름 VARCHAR(20),
주소 VARCHAR(20),
PRIMARY KEY(고객번호));

CREATE TABLE 예약 (
예약번호 VARCHAR(20),
극장번호 VARCHAR(20),
고객번호 VARCHAR(20),
PRIMARY KEY(예약번호),
FOREIGN KEY(극장번호) REFERENCES 극장(극장번호), 
FOREIGN KEY(고객번호) REFERENCES 고객(고객번호)
);

INSERT INTO 극장(극장번호, 극장이름, 위치)
		VALUES ('1', '메가박스', '강남'), 
        ('2', 'CGV', '온수'),
		('3', '롯데시네마', '부평');
        
INSERT INTO 고객(고객번호, 고객이름, 주소)
		VALUES('a','김동균', '부평'), ('b', '최인호', '일산'), ('c', '안준영', '오류동');
        
INSERT INTO 예약(예약번호, 극장번호, 고객번호) 
		VALUES ('001', '3', 'a'), ('002', '1', 'b'), ('003', '2', 'c');

SELECT *
FROM 예약
LEFT JOIN 극장
ON 예약.극장번호 = 극장.극장번호;

SELECT *
FROM 예약 
LEFT JOIN 고객
ON 예약.고객번호 = 고객.고객번호;
