package com.trip.domain;

import lombok.Data;

/*
create table festivaldata (
    num number(5) not null primary key,
    title varchar2(50),
    address varchar2(100),
    firstimg varchar2(500),
    startdate varchar2(8),
    enddate varchar2(8),
    mapx varchar2(50),
    mapy varchar2(50),
    mlevel number(5)
); 
 */

@Data
public class FesDataDTO {
	private int fesNum;
	private String title;
	private String address;
	private String firstImg;
	private String startDate;
	private String endDate;
	private String mapX;
	private String mapY;
	private int mLevel;
}
