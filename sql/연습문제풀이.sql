--������ȣ�� 1�� ������ �̸�
select bookname from book where bookid = 1;

-- ������ 20,000�� �̻��� ������ �̸�

select bookname from book where price >= 20000;


--  ���缭�� ������ �� ����
select count(*) from book;

--  ���缭���� ������ ����ϴ� ���ǻ��� �� ����
select count(distinct publisher) from book;

--  ��� ���� �̸�, �ּ�

select name as ���̸�, address as �ּ� from customer;

--  2014�� 7�� 4��~7�� 7�� ���̿� �ֹ����� ������ �ֹ���ȣ
select orderdate from orders ;
select orderdate from orders where orderdate = '14/07/01' ;
select orderdate from orders where orderdate like '14/07/01' ;

select orderdate from orders where orderdate = '14-07-01' ;
--select orderdate from orders where orderdate like '14-07-01' ;

select orderdate from orders where orderdate >= '14/07/01' and  orderdate <='14/07/05';

select orderid, orderdate from orders where orderdate BETWEEN  '14/07/04' and  '14/07/07';

--  2014�� 7�� 4��~7�� 7�� ���̿� �ֹ����� ������ ������ ������ �ֹ���ȣ

select orderid, orderdate from orders where orderdate not BETWEEN  '14/07/04' and  '14/07/07';

--  ���� ���衯 ���� ���� �̸��� �ּ�
select name, address from customer where name like '��%';

--  ���� ���衯 ���̰� �̸��� ���ơ��� ������ ���� �̸��� �ּ�
select name, address from customer where name like '��%��';

--�ֹ� �ݾ��� �Ѿװ� �ֹ��� ��� �ݾ�

--���� ���� �Լ�(sum, average, max, min, count)

select sum(saleprice) as �ֹ��ݾ��Ѿ�, avg(saleprice) from orders ;




