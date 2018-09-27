create table tb_member(
    mem_no number primary key,
    mem_id varchar2(30) not null,
    mem_name varchar2(15) not null,
    mem_pass varchar2(30) not null,
    mem_pass_hint varchar2(30) not null,
    mem_gender char,
    mem_favorite_place varchar2(20),
    mem_reg_date date,
    mem_poto VARCHAR2(100)
);

create table tb_board_review (
    no number primary key,
    title varchar2(200) not null,
    content varchar2(4000) not null,
    reg_date date default sysdate,
    mod_date date default sysdate,
    rec_cnt number default 0,
    mem_no number REFERENCES tb_member(mem_no)
);

create sequence s_board_review;

drop sequence s_board_review;

drop table tb_board_review purge;

drop table tb_member purge;

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

create sequence s_comment_review;

select *
  from tb_comment_review
 order by no desc;

commit;

