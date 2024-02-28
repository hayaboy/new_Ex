--������ 8,000�� �̻��� ������ ������ ���� ���Ͽ� ���� �ֹ� ������ �� ������ ���Ͻÿ�.
--��, �� �� �̻� ������ ���� ���Ѵ�.

--������ 8,000�� �̻��� ����
select * from book where price>=8000;

--���� (group by) : �����Լ�(sum, avg, count, max, min)

--���Ű��� 8000�� �̻��� orders
--select count(*) FROM orders where saleprice>=8000 group by custid ;
--select count(*) FROM orders where saleprice>=8000 group by custid having count(*)>=2;



--Customer ���̺��� Orders ���̺�� ���� ���� �����غ���

select orderid, customer.custid, orders.custid, customer.name    from customer, orders where customer.custid=orders.custid ;

select count(*) from customer, orders;


select o.orderid, c.custid, o.custid, c.name, b.bookname
from customer c, orders o, book b 
where c.custid=o.custid and o.orderid=b.bookid and c.name like '������';


--��������

--1 ���缭���� ���� �䱸�ϴ� ���� ������ ���� SQL ���� �ۼ��Ͻÿ�.
--  (1) ������ȣ�� 1�� ������ �̸�

select bookname from book where bookid=1;


--  (2) ������ 20,000�� �̻��� ������ �̸�

select bookname from book where price >= 20000;


--  (3) �������� �� ���ž�(�������� ����ȣ�� 1������ ���� �ۼ�)
select sum(saleprice) from orders where custid=1;
SELECT SUM(saleprice) 
	FROM Customer, Orders 
	WHERE Customer.custid=Orders.custid 
		AND Customer.name LIKE '������';



--  (4) �������� ������ ������ ��(�������� ����ȣ�� 1������ ���� �ۼ�)

select distinct bookid from orders where custid=1;
select count(distinct bookid) from orders where custid=1;

SELECT COUNT(*) FROM Customer, Orders 
	WHERE Customer.custid=Orders.custid 
         	AND Customer.name LIKE '������';


--  (5) �������� ������ ������ ���ǻ� ��

select count(distinct book.publisher) from book, orders, customer 
where book.bookid=orders.bookid and orders.custid=customer.custid and customer.name like '������';


--  (6) �������� ������ ������ �̸�, ����, ������ �ǸŰ����� ����
--      customer   orders   book     
 select book.bookname, book.price, book.price- orders.saleprice as "������ �ǸŰ� ����" from book, orders, customer 
where book.bookid=orders.bookid and orders.custid=customer.custid and customer.name like '������';



--  (7) �������� �������� ���� ������ �̸�

select distinct book.bookname from book, orders, customer 
where book.bookid=orders.bookid and orders.custid=customer.custid and customer.name not like '������';










-- �μ����ǿ��� exists ���� �����

-- �ֹ��� �ִ� ��
select name, address from customer cs
where exists (SELECT * FROM  Orders od WHERE cs.custid =od.custid);

--select * from orders where orders.custid; 

--select *
--from customer
--where exists ();

select * from book;

select * from book where price in (7000, 8000, 6000);
select * from book where price not in (7000, 8000, 6000);

--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
select distinct custid from orders;


select * from customer where customer.custid in (1,2,3,4);
select name from customer where customer.custid in (select distinct custid from orders);

--join(�������� �� id)
select distinct customer.custid from customer, orders where customer.custid=orders.custid and customer.name like '������';


select *
from customer c, orders o, book b
where c.custid=o.custid and  o.bookid=b.bookid and      c.name like '������';






--���ѹ̵��� ������ ������ ������ ���� �̸��� ���̽ÿ�.



--  (7) �������� �������� ���� ������ �̸�(�������� �̿��ؼ� Ǯ��)

--SELECT bookname FROM Customer cs Orders o WHERE cs.custid =o.custid  and o.bookid=b.bookid and cs.name  like '������';



select distinct b.bookname from  book b
where not exists (SELECT bookname FROM Customer cs,Orders o WHERE cs.custid =o.custid  and o.bookid=b.bookid and cs.name  like '������');


SELECT bookname FROM Book b1
	WHERE NOT EXISTS 
	    (SELECT bookname FROM Customer, Orders
	     WHERE Customer.custid=Orders.custid AND Orders.bookid=b1.bookid
	              AND Customer.name LIKE '������');


--�츮�� ���ݱ��� inner(�, equi) ����
-- out ������ ���� ���� ��Ű�� �������� ��, ����

--select * from customer, orders where customer.custid=orders.custid;

select * from customer left outer join orders on customer.custid=orders.custid;

select * from customer right outer join orders on customer.custid=orders.custid;


select * from emp right outer join dept on emp.deptno=dept.deptno;

--���� ��� ������ �̸��� ���̽ÿ�.

-- �μ�����(sub query)
select *
from book
where  price  = (select max(price) from book);


--select max(price) from book;
select * from customer;

select *
from (select * from customer)
where name like '������';

select bookname from book;






--2 ���缭���� ��ڿ� �濵�ڰ� �䱸�ϴ� ���� ������ ���� SQL ���� �ۼ��Ͻÿ�.
--  (1) ���缭�� ������ �� ����
select count(bookid) from book;
--  (2) ���缭���� ������ ����ϴ� ���ǻ��� �� ����

SELECT COUNT(Distinct publisher)
	FROM Book;


--  (3) ��� ���� �̸�, �ּ�

SELECT name, address
	FROM Customer;

--  (4) 2014�� 7�� 4��~7�� 7�� ���̿� �ֹ����� ������ �ֹ���ȣ
select * from orders where orderdate>='140704' and orderdate<='140707';
select * from orders where orderdate BETWEEN '140704' and '140707';
--  (5) 2014�� 7�� 4��~7�� 7�� ���̿� �ֹ����� ������ ������ ������ �ֹ���ȣ

select * from orders where orderdate not BETWEEN '140704' and '140707';

--  (6) ���� ���衯 ���� ���� �̸��� �ּ�
select name,address from customer where name like '��%';
--  (7) ���� ���衯 ���̰� �̸��� ���ơ��� ������ ���� �̸��� �ּ�
select name,address from customer where name like '��%��';
--  (8) �ֹ����� ���� ���� �̸�(�μ����� ���)

SELECT name FROM Customer
	WHERE name NOT IN 
		(SELECT name
		FROM Orders, Customer
		WHERE Orders.custid=Customer.custid);

--  (9) �ֹ� �ݾ��� �Ѿװ� �ֹ��� ��� �ݾ�
SELECT SUM(saleprice), AVG(saleprice)
	FROM Orders;

--(10) ���� �̸��� ���� ���ž�
SELECT name, SUM(saleprice)
	FROM  Orders, Customer
	WHERE Orders.custid=Customer.custid
	GROUP BY name;

--(11) ���� �̸��� ���� ������ ���� ���
SELECT name, bookname
	FROM Book, Orders, Customer
	WHERE Book.bookid=Orders.bookid 
	        AND Orders.custid=Customer.custid;

--(12) ������ ����(Book ���̺�)�� �ǸŰ���(Orders ���̺�)�� ���̰� ���� ���� �ֹ�
select orderid
from book, orders 
WHERE Book.bookid=Orders.bookid
and book.price-orders.saleprice =(select max(book.price-orders.saleprice) from book, orders where Book.bookid=Orders.bookid );

select max(book.price-orders.saleprice) from book, orders where Book.bookid=Orders.bookid;




--(13) ������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸�


SELECT customer.name, AVG(saleprice) 
FROM Customer, Orders
WHERE Customer.custid=Orders.custid
GROUP BY customer.name
having AVG(saleprice)>(select avg(saleprice) from orders);

select avg(saleprice) from orders;






