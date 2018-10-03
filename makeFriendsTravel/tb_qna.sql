create table tb_board_qna (
    no number primary key,
    title varchar2(200) not null,
    content varchar2(4000) not null,
    reg_date date default sysdate,
    mod_date date default sysdate,
    mem_no number REFERENCES tb_member(mem_no)
);

create sequence s_board_qna;

create table tb_file_qna (
    file_no number primary key,
    file_original_name varchar2(50),
    file_server_name varchar2(50),
    file_path varchar2(100),
    file_size number,
    no number REFERENCES tb_board_review(no)
);

create sequence s_file_qna;

select *
  from tb_file_qna
 order by no desc;

create table tb_comment_qna (
    comment_no number primary key,
    comment_content varchar2(420),
    comment_reg_date date default sysdate,
    comment_mod_date date default sysdate,
    no number REFERENCES tb_board_qna(no),
    mem_no number REFERENCES tb_member(mem_no)
);

create sequence s_comment_qna;

insert into tb_board_qna(
    no, title, content, mem_no
)values(
    s_board_qna.nextval, 'tltle1', 'content1', 2
);


commit;