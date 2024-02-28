--create table NewBook(
--    bookid number primary key,
--    bookname varchar2(20),
--    publisher varchar2(20),
--    price number
--);
--select * from newbook;

--create table NewCustomer(
--
-- custid number primary key,
-- name varchar2(40),
-- address varchar2(40),
-- phone varchar2(30)
--
--);
--select * from newcustomer;


--drop table newbook;
--drop table newcustomer;
--select * from book;
--select count(*) from book;
--insert into book(bookid,bookname, publisher, price) VALUES(11, '스포츠 의학','한솔의학서적',90000);
--insert into book(bookid,bookname, publisher) VALUES(14, '스포츠 의학','한솔의학서적');
--insert into book(bookid,bookname,publisher, price) select bookid,bookname,publisher, price from imported_book;


select * from customer where custid=5;
update customer set address='대한민국 부산' where custid=5;
select * from customer where name='김연아';
select address from customer where name like '김연아';

--update customer set address ='대한민국 서울' where name like '박세리';
update customer set address =(select address from customer where name like '김연아') where name like '박세리';

select * from customer where name='박세리';

--삭제시 주키를 조건으로
delete from customer where custid=5;

select * from customer where custid=5;
select * from customer;
delete from customer;

select * from orders;
