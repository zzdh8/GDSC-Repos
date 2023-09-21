USE TEST;
CREATE TABLE 극장(
극장번호 VARCHAR(20),
극장이름 VARCHAR(20),
위치 VARCHAR(20),
PRIMARY KEY(극장번호));

CREATE TABLE 고객(
고객번호 VARCHAR(20),
고객이름 VARCHAR(20),
주소 VARCHAR(20),
PRIMARY KEY(고객번호));

CREATE TABLE 예약 (
  예약번호 VARCHAR(20),
  극장번호 VARCHAR(20),
  고객번호 VARCHAR(20),
  FOREIGN KEY (극장번호) REFERENCES 극장(극장번호),
  FOREIGN KEY (고객번호) REFERENCES 고객(고객번호),
  PRIMARY KEY(예약번호));

INSERT INTO 극장(극장번호,극장이름, 위치)
VALUES('1','cgv','홍대'), 
('2','매가박스','신촌'),
('3','롯데시네마','일산');

INSERT INTO 고객(고객번호, 고객이름, 주소)
VALUES('a','최인호','일산'), 
('b','김동균','부평'),
('c','안준영','오류동');

INSERT INTO 예약(예약번호, 극장번호, 고객번호)
VALUES('123','1','a'), 
('456','2','b'),
('789','3','c');

SELECT * 
FROM 예약
LEFT JOIN 극장
ON 예약.극장번호  = 극장.극장번호;

SELECT * 
FROM 예약
LEFT JOIN 고객
ON 예약.고객번호  = 고객.고객번호;


