package com.trip.mapper;

import java.util.List;

import com.trip.domain.UserVO;

public interface UserMapper {
	public List<UserVO> getList();
	public void insert(UserVO vo);
	public void insertSelectKey(UserVO vo);
	public UserVO read(int bno);
	public int delete(int bno);
	public int update(UserVO vo);
}