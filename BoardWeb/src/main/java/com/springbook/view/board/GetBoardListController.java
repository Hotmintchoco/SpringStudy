package com.springbook.view.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import com.springbook.view.controller.Controller;

public class GetBoardListController implements Controller{
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("글 목록 검색 처리");
		
		BoardVO vo = new BoardVO();
		BoardDAO boardDAO = new BoardDAO();
		List<BoardVO> boardList = null;
		
		String condition = request.getParameter("searchCondition");
		if(condition != null) {
			String keyWord = request.getParameter("searchKeyword");
			if(condition.equals("title")) {
				vo.setTitle(keyWord);
				boardList = boardDAO.getBoardSearchTitleList(vo);
			} else if(condition.equals("content")) {
				vo.setContent(keyWord);
				boardList = boardDAO.getBoardSearchContentList(vo);
			} 
		} else {
			boardList = boardDAO.getBoardList(vo);
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("boardList", boardList);
		return "getBoardList";
	}
	
}
