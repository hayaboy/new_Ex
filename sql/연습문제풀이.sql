--도서번호가 1인 도서의 이름
select bookname from book where bookid = 1;

-- 가격이 20,000원 이상인 도서의 이름

select bookname from book where price >= 20000;


--  마당서점 도서의 총 개수
select count(*) from book;

--  마당서점에 도서를 출고하는 출판사의 총 개수
select count(distinct publisher) from book;

--  모든 고객의 이름, 주소

select name as 고객이름, address as 주소 from customer;

--  2014년 7월 4일~7월 7일 사이에 주문받은 도서의 주문번호
select orderdate from orders ;
select orderdate from orders where orderdate = '14/07/01' ;
select orderdate from orders where orderdate like '14/07/01' ;

select orderdate from orders where orderdate = '14-07-01' ;
--select orderdate from orders where orderdate like '14-07-01' ;

select orderdate from orders where orderdate >= '14/07/01' and  orderdate <='14/07/05';

select orderid, orderdate from orders where orderdate BETWEEN  '14/07/04' and  '14/07/07';

--  2014년 7월 4일~7월 7일 사이에 주문받은 도서를 제외한 도서의 주문번호

select orderid, orderdate from orders where orderdate not BETWEEN  '14/07/04' and  '14/07/07';

--  성이 ‘김’ 씨인 고객의 이름과 주소
select name, address from customer where name like '김%';

--  성이 ‘김’ 씨이고 이름이 ‘아’로 끝나는 고객의 이름과 주소
select name, address from customer where name like '김%아';

--주문 금액의 총액과 주문의 평균 금액

--집계 관련 함수(sum, average, max, min, count)

select sum(saleprice) as 주문금액총액, avg(saleprice) from orders ;




