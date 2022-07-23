**********DB
create user trip identified by 1234;
grant connect, resource, dba to trip;
commit;

CREATE TABLE users (
   usernum number NOT NULL primary key,
   userid varchar2(20) NOT NULL,
   username varchar2(20) NOT NULL,
   userpass varchar2(16) NOT NULL,
   phone char(13) NOT NULL,
   birth char(8) NOT NULL,
   gender varchar2(8) NOT NULL,
   joindate date default sysdate,
   email varchar2(50) NOT NULL,
   admin number(1) NOT NULL,
   qestion varchar2(50) NULL,
   answer varchar2(30) NULL
);

CREATE TABLE festival (
   festival_num number NOT NULL primary key,
   festival_title varchar2(50) NOT NULL,
   festival_content varchar2(4000) NOT NULL,
   festival_image varchar2(4000) NULL,
   festival_schedule varchar2(30) NULL,
   festival_city varchar2(10) not null,
   --fk 추가
   usernum number not null,
   CONSTRAINT fk_user_to_festival foreign key(usernum) references users(usernum)
);

CREATE TABLE board (
   board_num number NOT NULL primary key,
   board_title varchar2(50) NOT NULL,
   board_content varchar2(4000) not null,
   board_date date default sysdate,
   hits number NOT NULL,
   board_image varchar2(4000) NULL,
   board_like number not null,
   --fk 추가
   usernum number not null,
   CONSTRAINT fk_user_to_board foreign key(usernum) references users(usernum)
);

CREATE TABLE board_comment (
   board_comm_num number NOT NULL primary key,
   board_comm_date date default sysdate,
   board_comm_reply varchar2(1000) NOT NULL,
   --fk 추가
   board_num number not null,
   CONSTRAINT fk_board_to_comment foreign key(board_num) references board(board_num)
);

create table destination (
    destination_num number not null primary key,
    destination_title varchar2(50) not null,
    destination_date date default sysdate,
    destination_image varchar2(4000),
    destination_content varchar2(4000) not null,
    --fk 추가
    usernum number not null,
    CONSTRAINT fk_user_to_destination foreign key(usernum) references users(usernum)
);

create table des_comment (
    des_comm_num number not null,
    des_comm_date date default sysdate,
    des_comm_reply varchar2(1000),
    --fk 추가
    destination_num number not null,
    CONSTRAINT fk_destination_to_des_comment foreign key(destination_num) references destination(destination_num)
);
    

CREATE TABLE course (
   course_num number NOT NULL primary key,
   course_title varchar2(50) NOT NULL,
   course_content varchar2(4000) NOT NULL,
   course_image varchar2(4000) NULL,
   course_like number NOT NULL,
   course_city varchar2(10) not null,
   --fk 추가
   destination_num number not null,
    CONSTRAINT fk_destination_to_course foreign key(destination_num) references destination(destination_num)
);

-- 회원목록 시퀀스
create sequence users_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 축제 시퀀스
create sequence festival_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 보드 시퀀스
create sequence board_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 보드 댓글 시퀀스
create sequence board_comment_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 여행지 시퀀스
create sequence destination_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 여행지 댓글 시퀀스
create sequence des_comment_seq
START with 1 INCREMENT by 1 MINVALUE 1;
-- 코스 시퀀스
create sequence course_seq
START with 1 INCREMENT by 1 MINVALUE 1;

commit;