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
--insert into book(bookid,bookname, publisher, price) VALUES(11, '������ ����','�Ѽ����м���',90000);
--insert into book(bookid,bookname, publisher) VALUES(14, '������ ����','�Ѽ����м���');
--insert into book(bookid,bookname,publisher, price) select bookid,bookname,publisher, price from imported_book;


select * from customer where custid=5;
update customer set address='���ѹα� �λ�' where custid=5;
select * from customer where name='�迬��';
select address from customer where name like '�迬��';

--update customer set address ='���ѹα� ����' where name like '�ڼ���';
update customer set address =(select address from customer where name like '�迬��') where name like '�ڼ���';

select * from customer where name='�ڼ���';

--������ ��Ű�� ��������
delete from customer where custid=5;

select * from customer where custid=5;
select * from customer;
delete from customer;

select * from orders;
