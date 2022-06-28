package com.springbook.view.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		process(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		System.out.println(path);
		
		if(path.equals("/login.do")) {
			System.out.println("로그인 처리");
			
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			
			UserVO vo = new UserVO();
			vo.setId(id);
			vo.setPassword(password);
			
			UserDAO userDAO = new UserDAO();
			UserVO user = userDAO.getUser(vo);
			
			if (user != null) {
				response.sendRedirect("getBoardList.do");
			} else {
				response.sendRedirect("login.jsp");
			}
		} else if(path.equals("/logout.do")) {
			System.out.println("로그아웃 처리");
		} else if(path.equals("/insertBoard.do")) {
			System.out.println("글 등록 처리");
		} else if(path.equals("/updateBoard.do")) {
			System.out.println("글 수정 처리");
		} else if(path.equals("/deleteBoard.do")) {
			System.out.println("글 삭제 처리");
		} else if(path.equals("/getBoard.do")) {
			System.out.println("글 상세 조회 처리");
		} else if(path.equals("/getBoardList.do")) {
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
			response.sendRedirect("getBoardList.jsp");
		}
	}
}

