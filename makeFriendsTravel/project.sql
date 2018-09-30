create table tb_member(
    mem_no number primary key,
    mem_id varchar2(30) not null,
    mem_name varchar2(15) not null,
    mem_pass varchar2(30) not null,
    mem_pass_hint varchar2(30) not null,
    mem_gender char,
    mem_email varchar2(40),    
    mem_favorite_place varchar2(20),
    mem_reg_date date,
    mem_poto VARCHAR2(100),
    mem_potoAddr VARCHAR2(100)
)

create SEQUENCE m_member_no
  INCREMENT BY 1 MAXVALUE 5000 CYCLE;
  
drop table tb_member purge;