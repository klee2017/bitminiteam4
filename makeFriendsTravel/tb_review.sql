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
);

create SEQUENCE m_member_no
  INCREMENT BY 1 MAXVALUE 5000 CYCLE;

create table tb_board_review (
    no number primary key,
    title varchar2(200) not null,
    content varchar2(4000) not null,
    reg_date date default sysdate,
    mod_date date default sysdate,
    rec_cnt number default 0,
    mem_no number REFERENCES tb_member(mem_no)
);

alter table tb_member
add (mem_email varchar2(40), mem_potoAddr VARCHAR2(100));

alter table tb_member
drop column mem_pass_hint;

alter table tb_member
add (mem_pass_hint varchar2(30));

create sequence s_board_review;

drop sequence s_board_review;

drop table tb_board_review purge;

drop table tb_member purge;

select *
  from tb_member
 order by mem_no desc;

select *
  from tb_board_review
 order by no desc;

create table tb_file_review (
    file_no number primary key,
    file_original_name varchar2(50),
    file_server_name varchar2(50),
    file_path varchar2(100),
    file_size number,
    no number REFERENCES tb_board_review(no)
);

create sequence s_file_review;

select *
  from tb_file_review
 order by no desc;

create table tb_comment_review (
    comment_no number primary key,
    comment_content varchar2(420),
    comment_reg_date date default sysdate,
    comment_mod_date date default sysdate,
    no number REFERENCES tb_board_review(no),
    mem_no number REFERENCES tb_member(mem_no)
);

alter table tb_comment_review
 drop CONSTRAINT no references tb_board_review(no);
 
alter table tb_comment_review
  add constraint no on delete cascade;


create sequence s_comment_review;

select *
  from tb_comment_review
 order by no desc;

insert into tb_member (
    mem_no, mem_id, mem_name, mem_pass, mem_pass_hint 
) values (
    m_member_no.nextval, 'id', 'name', 'pass', 'hint'
);

insert into tb_member (
    mem_no, mem_id, mem_name, mem_pass, mem_pass_hint 
) values (
    5, 'id', 'name', 'pass', 'hint'
);

insert into tb_board_review (
    no, title, content, mem_no
) values (
    S_BOARD_REVIEW.nextval, 'title1', 'content1', 2
);

delete from tb_board_review;

delete from tb_member;

delete from tb_comment_review;

insert into tb_comment_review (
    comment_no, comment_content, no, mem_no
) values (
    s_comment_review.nextval, 'comment1', 2, 2
);

select mem_poto
  from tb_member;
  
delete
  from tb_member
 where mem_no = 2;

delete
  from tb_board_review
 where mem_no = 2;
 
select *
  from tb_comment_review
 where mem_no = 2;

commit;

