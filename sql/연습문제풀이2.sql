select distinct job as Á÷¹« from emp;


select empno as EMPLOYEE_NO, ename as EMPLOYEE_NAME, mgr as MANAGER, sal as SALARY, comm as COMMISSION, deptno as DEPARTMENT_NO
from emp
order by deptno desc, ename;

select *
from emp 
where ename like '%S';

select empno, ename, job, sal, deptno
from emp 
where deptno = 30  and job like 'SALESMAN';



select empno, ename, job, sal, deptno
from emp 
where deptno in (20,30) and sal >  2000;






