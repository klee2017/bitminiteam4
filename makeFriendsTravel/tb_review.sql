create table tb_board_review (
    no number primary key,
    title varchar2(200) not null,
    content varchar2(4000) not null,
    reg_date date default sysdate,
    mod_date date default sysdate,
    rec_cnt number default 0
--    mem_no number REFERENCES 
);

create sequence s_board_review;

drop sequence s_board_review;

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
    no number REFERENCES tb_board_review(no)
);

create sequence s_comment_review;

select *
  from tb_comment_review
 order by no desc;

commit;

