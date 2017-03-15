select * from T_XBBNHGZ_PARKINFO;
select * from T_XBBNHGZ_SLOTS;
select * from T_XBBNHGZ_FARE;
select * from T_XBBNHGZ_SLOTSTATUS;
select * from T_XBBNHGZ_USERINFO order by userid;


SELECT  table_name, column_name, data_type, data_length FROM all_tab_columns where table_name = 'T_XBBNHGZ_USERINFO'; 
/*DESCRIBE QUERY*/

create table T_XBBNHGZ_USERINFO(userid integer,username varchar(40),usermail varchar(40),userphone number(12));
ALTER TABLE table_name ADD column_name column-definition;
ALTER TABLE T_XBBNHGZ_USERINFO ADD DATEOFREGISTER TIMESTAMP;
create table demoincrement(id number(10),name varchar(10));

CREATE SEQUENCE dept_seq START WITH 1;

drop table T_XBBNHGZ_SLOTSTATUS;

create table demoincrement(id number(10) auto_increment=1,name varchar(10));

create table demodefault(id integer,status integer default 1 not null);

insert into T_XBBNHGZ_SLOTSTATUS (slot_number) values(10);

CREATE TABLE order_status (order_status_id INTEGER,status VARCHAR2(20) DEFAULT 'Order placed' NOT NULL,last_modified DATE DEFAULT SYSDATE);

INSERT INTO order_status (order_status_id) VALUES (2);

create table T_XBBNHGZ_SLOTSTATUS(slot_number integer,slot_status VARCHAR(6) DEFAULT 'EMPTY' NOT NULL);

SELECT MIN(SLOT_NUMBER) FROM T_XBBNHGZ_SLOTSTATUS WHERE SLOT_STATUS='EMPTY' ORDER BY SLOT_NUMBER DESC;.

create table T_XBBNHGZ_SLOTS(random_id integer,slot_number integer);
 
create table T_XBBNHGZ_FARE(RANDOM_ID INTEGER,CHECKIN TIMESTAMP,CHECKOUT TIMESTAMP,TYPE VARCHAR(20),FARE FLOAT)

drop table T_XBBNHGZ_FARE;

select {fn TIMESTAMPDIFF(SQL_TSI_MINUTE, CHECKIN, CHECKOUT)} from T_XBBNHGZ_FARE WHERE RANDOM_ID=358;

SELECT (CHECKIN - CHECKOUT) FROM T_XBBNHGZ_FARE WHERE RANDOM_ID=358;

SELECT round((to_char(CHECKIN,'J')-to_char(CHECKOUT,'J'))*1440+(to_char(CHECKIN,'SSSSS')-to_char(CHECKOUT,'SSSSS'))/60) FROM T_XBBNHGZ_FARE WHERE RANDOM_ID=358;

UPDATE T_XBBNHGZ_SLOTSTATUS SET SLOT_STATUS='EMPTY' WHERE SLOT_NUMBER=(SELECT SLOT_NUMBER FROM T_XBBNHGZ_SLOTS WHERE RANDOM_ID=358);

update T_XBBNHGZ_SLOTSTATUS SET SLOT_STATUS='EMPTY' WHERE SLOT_NUMBER=2;

select * from T_XBBNHGZ_PARKINFO WHERE USER_ID=23;
 
SELECT * FROM tbl WHERE mdate >= '2011-09-12 00:00:00.0' AND mdate <= '2011-09-13 00:00:00.0';

SELECT * FROM T_XBBNHGZ_FARE WHERE checkin::date >= '2017-02-10 00:00:00.0' AND checkin <= '2017-02-15 00:00:00.0';

select * from T_XBBNHGZ_FARE;
       358 2017-02-09 19:43:22.503 2017-02-09 19:45:14.18  BIKE     0
       
SELECT * FROM T_XBBNHGZ_FARE WHERE checkin >= TO_DATE('09/02/17','DD/MM/YY');

SELECT * FROM T_XBBNHGZ_FARE WHERE checkin::date >= DATE '2017-02-09';
mdate::date >= DATE '2011-09-12' 

SELECT * FROM BOOKING_SESSION WHERE TO_CHAR(T_SESSION_DATETIME, 'DD-MM-YYYY') ='20-03-2012';

SELECT SUM(FARE) AS SUM, COUNT(RANDOM_ID) FROM T_XBBNHGZ_FARE WHERE TO_CHAR(checkin, 'DD-MM-YYYY')>='09-02-2017' AND TO_CHAR(checkin, 'DD-MM-YYYY')<='10-02-2017';

SELECT SUM(FARE) AS SUM, COUNT(RANDOM_ID) FROM T_XBBNHGZ_FARE WHERE TO_CHAR(checkin, 'MM')='02';

SELECT USER_ID,COUNT(USER_ID) FROM T_XBBNHGZ_PARKINFO GROUP BY USER_ID ORDER BY COUNT(USER_ID) DESC;

select COUNT(RANDOM_ID) from T_XBBNHGZ_FARE WHERE TO_CHAR(CHECKIN ,'DD-MM-YYYY') = '15-02-2017';

select count(user_id) from T_XBBNHGZ_PARKINFO WHERE USER_ID=23;

SELECT * FROM T_XBBNHGZ_FARE WHERE TO_CHAR(checkin ,'DD-MM-YYYY') = '15-02-2017';

SELECT P.RANDOM_ID,P.USER_ID,P.VEHICLE_TYPE,P.VEHICLE_NUMBER,P.SLOT_NUMBER,Q.CHECKIN,Q.CHECKOUT,Q.FARE FROM T_XBBNHGZ_PARKINFO P LEFT JOIN T_XBBNHGZ_FARE Q ON  P.RANDOM_ID=Q.RANDOM_ID WHERE TO_CHAR(Q.CHECKIN ,'DD-MM-YYYY') = '15-02-2017';

update T_XBBNHGZ_USERINFO SET DATEOFREGISTER='2017-02-10 00:00:00.0' WHERE USERID=23;

SELECT * FROM T_XBBNHGZ_PARKINFO WHERE RANDOM_ID=?

select COUNT(USERID) from T_XBBNHGZ_USERINFO WHERE TO_CHAR(DATEOFREGISTER ,'DD-MM-YYYY') = '22-02-2017';

