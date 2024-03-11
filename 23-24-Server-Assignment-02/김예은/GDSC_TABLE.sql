CREATE TABLE Customer (
 customer_id       INT NOT NULL ,
 customer_name     VARCHAR(20),
 address   VARCHAR(100),
  PRIMARY KEY(customer_id)
) 
CREATE TABLE Theater (
 theater_id       INT NOT NULL ,
 theater_name     VARCHAR(20),
 location    VARCHAR(100), 
  PRIMARY KEY(theater_id)
) 
CREATE TABLE Reservation (
reservation_id       INT NOT NULL ,
reservation_date     DATE ,
price   INT, 
movie_name VARCHAR(100),
theater_id       INT,
customer_id       INT,
PRIMARY KEY(reservation_id),
 foreign key (theater_id) references Theater(theater_id),
 foreign key (customer_id) references Customer(customer_id)
) 

INSERT INTO Theater ( theater_id, theater_name, location)
	   	    VALUE(1001, 'CGV',  '송파');

INSERT INTO Theater ( theater_id, theater_name, location)
	   	    VALUE(1002, '메가박스',  '코엑스');

INSERT INTO Theater ( theater_id, theater_name, location)
	   	    VALUE(1003, '롯데시네마',  '건대입구');

INSERT INTO Customer ( customer_id, customer_name, address)
	   	    VALUE(1, '김예은',  '잠실');

INSERT INTO Customer ( customer_id, customer_name, address)
	   	    VALUE(2, '김덕봉',  '강남');

INSERT INTO Customer ( customer_id, customer_name, address)
	   	    VALUE(3, '이하규',  '홍대');

INSERT INTO Customer ( customer_id, customer_name, address)
	   	    VALUE(4, '정인철',  '성수');

INSERT INTO Reservation (reservation_id, reservation_date, price, movie_name, theater_id, customer_id)
	   	    VALUE(6011, '2023-09-27',12000, '오펜하이머', 1001, 1); 
            
INSERT INTO Reservation (reservation_id, reservation_date, price, movie_name, theater_id, customer_id)
	   	    VALUE(6012, '2023-10-03',12000, '콘크리트유토피아', 1002, 3); 

INSERT INTO Reservation (reservation_id, reservation_date, price, movie_name, theater_id, customer_id)
	   	    VALUE(6015, '2023-09-28',13000, '잠', 1003, 2); 

INSERT INTO Reservation (reservation_id, reservation_date, price, movie_name, theater_id, customer_id)
	   	    VALUE(6003, '2023-09-20',11000, '잠', 1001, 4); 

SELECT *
FROM Reservation
JOIN Theater
ON Reservation.theater_id = Theater.theater_id 
JOIN Customer
ON Reservation.customer_id = Customer.customer_id; 
