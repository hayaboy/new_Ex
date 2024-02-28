--가격이 8,000원 이상인 도서를 구매한 고객에 대하여 고객별 주문 도서의 총 수량을 구하시오.
--단, 두 권 이상 구매한 고객만 구한다.

--정가가 8,000원 이상인 도서
select * from book where price>=8000;

--고객별 (group by) : 집계함수(sum, avg, count, max, min)

--구매가가 8000원 이상은 orders
--select count(*) FROM orders where saleprice>=8000 group by custid ;
--select count(*) FROM orders where saleprice>=8000 group by custid having count(*)>=2;



--Customer 테이블을 Orders 테이블과 조건 없이 연결해보자

select orderid, customer.custid, orders.custid, customer.name    from customer, orders where customer.custid=orders.custid ;

select count(*) from customer, orders;


select o.orderid, c.custid, o.custid, c.name, b.bookname
from customer c, orders o, book b 
where c.custid=o.custid and o.orderid=b.bookid and c.name like '박지성';


--연습문제

--1 마당서점의 고객이 요구하는 다음 질문에 대해 SQL 문을 작성하시오.
--  (1) 도서번호가 1인 도서의 이름

select bookname from book where bookid=1;


--  (2) 가격이 20,000원 이상인 도서의 이름

select bookname from book where price >= 20000;


--  (3) 박지성의 총 구매액(박지성의 고객번호는 1번으로 놓고 작성)
select sum(saleprice) from orders where custid=1;
SELECT SUM(saleprice) 
	FROM Customer, Orders 
	WHERE Customer.custid=Orders.custid 
		AND Customer.name LIKE '박지성';



--  (4) 박지성이 구매한 도서의 수(박지성의 고객번호는 1번으로 놓고 작성)

select distinct bookid from orders where custid=1;
select count(distinct bookid) from orders where custid=1;

SELECT COUNT(*) FROM Customer, Orders 
	WHERE Customer.custid=Orders.custid 
         	AND Customer.name LIKE '박지성';


--  (5) 박지성이 구매한 도서의 출판사 수

select count(distinct book.publisher) from book, orders, customer 
where book.bookid=orders.bookid and orders.custid=customer.custid and customer.name like '박지성';


--  (6) 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
--      customer   orders   book     
 select book.bookname, book.price, book.price- orders.saleprice as "정가와 판매가 차이" from book, orders, customer 
where book.bookid=orders.bookid and orders.custid=customer.custid and customer.name like '박지성';



--  (7) 박지성이 구매하지 않은 도서의 이름

select distinct book.bookname from book, orders, customer 
where book.bookid=orders.bookid and orders.custid=customer.custid and customer.name not like '박지성';










-- 부속질의에서 exists 많이 사용함

-- 주문이 있는 고객
select name, address from customer cs
where exists (SELECT * FROM  Orders od WHERE cs.custid =od.custid);

--select * from orders where orders.custid; 

--select *
--from customer
--where exists ();

select * from book;

select * from book where price in (7000, 8000, 6000);
select * from book where price not in (7000, 8000, 6000);

--도서를 구매한 적이 있는 고객의 이름을 검색하시오
select distinct custid from orders;


select * from customer where customer.custid in (1,2,3,4);
select name from customer where customer.custid in (select distinct custid from orders);

--join(박지성의 고객 id)
select distinct customer.custid from customer, orders where customer.custid=orders.custid and customer.name like '박지성';


select *
from customer c, orders o, book b
where c.custid=o.custid and  o.bookid=b.bookid and      c.name like '박지성';






--대한미디어에서 출판한 도서를 구매한 고객의 이름을 보이시오.



--  (7) 박지성이 구매하지 않은 도서의 이름(서브쿼리 이용해서 풀기)

--SELECT bookname FROM Customer cs Orders o WHERE cs.custid =o.custid  and o.bookid=b.bookid and cs.name  like '박지성';



select distinct b.bookname from  book b
where not exists (SELECT bookname FROM Customer cs,Orders o WHERE cs.custid =o.custid  and o.bookid=b.bookid and cs.name  like '박지성');


SELECT bookname FROM Book b1
	WHERE NOT EXISTS 
	    (SELECT bookname FROM Customer, Orders
	     WHERE Customer.custid=Orders.custid AND Orders.bookid=b1.bookid
	              AND Customer.name LIKE '박지성');


--우리는 지금까지 inner(등가, equi) 조인
-- out 조인은 값이 없는 주키도 나오도록 왼, 오른

--select * from customer, orders where customer.custid=orders.custid;

select * from customer left outer join orders on customer.custid=orders.custid;

select * from customer right outer join orders on customer.custid=orders.custid;


select * from emp right outer join dept on emp.deptno=dept.deptno;

--가장 비싼 도서의 이름을 보이시오.

-- 부속질의(sub query)
select *
from book
where  price  = (select max(price) from book);


--select max(price) from book;
select * from customer;

select *
from (select * from customer)
where name like '박지성';

select bookname from book;






--2 마당서점의 운영자와 경영자가 요구하는 다음 질문에 대해 SQL 문을 작성하시오.
--  (1) 마당서점 도서의 총 개수
select count(bookid) from book;
--  (2) 마당서점에 도서를 출고하는 출판사의 총 개수

SELECT COUNT(Distinct publisher)
	FROM Book;


--  (3) 모든 고객의 이름, 주소

SELECT name, address
	FROM Customer;

--  (4) 2014년 7월 4일~7월 7일 사이에 주문받은 도서의 주문번호
select * from orders where orderdate>='140704' and orderdate<='140707';
select * from orders where orderdate BETWEEN '140704' and '140707';
--  (5) 2014년 7월 4일~7월 7일 사이에 주문받은 도서를 제외한 도서의 주문번호

select * from orders where orderdate not BETWEEN '140704' and '140707';

--  (6) 성이 ‘김’ 씨인 고객의 이름과 주소
select name,address from customer where name like '김%';
--  (7) 성이 ‘김’ 씨이고 이름이 ‘아’로 끝나는 고객의 이름과 주소
select name,address from customer where name like '김%아';
--  (8) 주문하지 않은 고객의 이름(부속질의 사용)

SELECT name FROM Customer
	WHERE name NOT IN 
		(SELECT name
		FROM Orders, Customer
		WHERE Orders.custid=Customer.custid);

--  (9) 주문 금액의 총액과 주문의 평균 금액
SELECT SUM(saleprice), AVG(saleprice)
	FROM Orders;

--(10) 고객의 이름과 고객별 구매액
SELECT name, SUM(saleprice)
	FROM  Orders, Customer
	WHERE Orders.custid=Customer.custid
	GROUP BY name;

--(11) 고객의 이름과 고객이 구매한 도서 목록
SELECT name, bookname
	FROM Book, Orders, Customer
	WHERE Book.bookid=Orders.bookid 
	        AND Orders.custid=Customer.custid;

--(12) 도서의 가격(Book 테이블)과 판매가격(Orders 테이블)의 차이가 가장 많은 주문
select orderid
from book, orders 
WHERE Book.bookid=Orders.bookid
and book.price-orders.saleprice =(select max(book.price-orders.saleprice) from book, orders where Book.bookid=Orders.bookid );

select max(book.price-orders.saleprice) from book, orders where Book.bookid=Orders.bookid;




--(13) 도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름


SELECT customer.name, AVG(saleprice) 
FROM Customer, Orders
WHERE Customer.custid=Orders.custid
GROUP BY customer.name
having AVG(saleprice)>(select avg(saleprice) from orders);

select avg(saleprice) from orders;






