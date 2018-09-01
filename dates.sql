DROP TABLE IF EXISTS digits;
CREATE TABLE digits (digit INT);
INSERT INTO digits VALUES (0),(1),(2),(3),(4),(5),(6),(7),(8),(9);

/* zero through one million */
DROP TABLE IF EXISTS integers;
CREATE TABLE integers (no INT);
INSERT INTO integers
SELECT tens.digit * 10 + ones.digit
FROM digits tens, digits ones;

DROP TABLE IF EXISTS months;
create table months(
   no INT PRIMARY KEY NOT NULL,
   name CHAR(9) NOT NULL,
   no_str CHAR(2) NOT NULL);
insert into months values
(1,'January','01'),
(2,'February','02'),
(3,'March','03'),
(4,'April','04'),
(5,'May','05'),
(6,'June','06'),
(7,'July','07'),
(8,'August','08'),
(9,'September','09'),
(10,'October','10'),
(11,'November','11'),
(12,'December','12');

DROP TABLE IF EXISTS dates;
CREATE TABLE dates(
   id INT PRIMARY KEY NOT NULL,
   year_no INT NOT NULL,
   year_str TEXT NOT NULL,
   month_no INT NOT NULL,
   month_str TEXT NOT NULL,
   day_no INT NOT NULL,
   day_str TEXT NOT NULL
);

/* 31 days */
INSERT INTO dates (id,year_no, year_str, month_no, month_str, day_no, day_str)
select printf("%04d%02d%02d", 2018,months.no,integers.no),2018,'2018',months.no,months.no_str,integers.no,printf("%02d",integers.no) as day
from months,integers
where integers.no between 1 and 31 and months.no in (1,3,5,7,8,10,12);

/* 31 days */
INSERT INTO dates (id,year_no, year_str, month_no, month_str, day_no, day_str)
select printf("%04d%02d%02d", 2018,months.no,integers.no),2018,'2018',months.no,months.no_str,integers.no,printf("%02d",integers.no) as day
from months,integers
where integers.no between 1 and 30 and months.no in (4,6,9,11);

/* February */
INSERT INTO dates (id,year_no, year_str, month_no, month_str, day_no, day_str)
select printf("%04d%02d%02d", 2018,months.no,integers.no),2018,'2018',months.no as month,months.no_str,integers.no as day,printf("%02d",integers.no)
from months,integers
where day between 1 and 28 and month in (2);

/* /1* Leap Years *1/ */
/* INSERT INTO dates (id,year_no, year_str, month_no, month_str, day_no, day_str) */
/* select printf("%04d%02d%02d", 2018,2,29),2018,'2018',2,'02',29,29 */
/* from months */
/* where months.no in (2); */

