select sysdate from dual;
select 1+1 from dual;

select * from t_member;

insert into t_member(id, pwd, name, email) VALUES (?, ?, ?, ? );

delete from t_member where id='hong1';

commit;

select decode(1,2, 'same', 'not same') from dual ;
select decode('a','b', 'same', 'not same') from dual ;
select decode('°¡','³ª', 'same', 'not same') from dual ;

select * from t_member;
select * from t_member where id='hong' and pwd='1212';
select count(*) from t_member where id='hong' and pwd='1212';
select count(*) from t_member where id='hong' and pwd='1213';
select count(*) from t_member where id='hong3' and pwd='1212';

select   decode(count(*), 1, 'true','false' ) from t_member where id='hong' and pwd='1212';
select   decode(count(*), 1, 'true','false' ) from t_member where id='hong' and pwd='1213';
select   decode(count(*), 1, 'true','false' ) from t_member where id='kong' and pwd='1212';