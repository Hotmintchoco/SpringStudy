package com.trip.domain;

import java.sql.Date;

import lombok.Data;

/*
  -- 확인용 user 테이블
 CREATE TABLE users (
   usernum   number      NOT NULL,
   userid   varchar2(30)      NOT NULL,
   username   varchar2(20)      NOT NULL,
   userpass   varchar2(40)      NOT NULL,
   gender   varchar2(8)      NOT NULL,
   joindate   date  default sysdate
); 
 */
@Data
public class UserVO {
	private int userNum;
	private String userId, userName, userPass, gender;
	private Date joinDate;
}