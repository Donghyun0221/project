CREATE TABLE NFIN(
   code_nm VARCHAR2(10),
   date DATE,
   close NUMBER,
   volume NUMBER
   );

DESC NFIN;
DESC comcode;
select *
from NFIN
WHERE code = '000020';

select *
from nfin
where code = '000020';

select *
from(select *
from nfin 
left outer join comcode on
nfin.code = comcode.code
order by 1,2);

select *
from names;

select *
from nfin a, names b
where a.code = b.code
and b.kr_name = 'SK하이닉스';

create table reigst(
    mem_id varchar2(100) primary key
,   mem_pw varchar2(100)
,   mem_nm varchar2(100)
,   mem_addr VARCHAR2(100)
);
drop table reigst;
insert into reigst (mem_id, mem_pw, mem_nm, mem_addr)
values('admin', 'admin','관리자','qwer@naver.com');
commit;
select *
from reigst;
commit;

desc member;
select to_char(close_date,'YYYY-MM-DD') as close_date
from nfin;

desc nfin;





