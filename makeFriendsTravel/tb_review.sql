create table tb_review (
    no number primary key,
    title varchar2(50) not null,
    content varchar2(4000) not null,
    reg_date date default sysdate,
    mod_date date default sysdate
);

select *
  from tb_review
 order by no desc;
 
commit;

