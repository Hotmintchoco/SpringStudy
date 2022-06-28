<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
<%
	request.setCharacterEncoding("UTF-8");
	String seq = request.getParameter("seq");
	BoardVO vo = new BoardVO();
	vo.setSeq(Integer.parseInt(seq));
	
	BoardDAO boardDAO = new BoardDAO();
	BoardVO board = boardDAO.getBoard(vo);
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	board.setTitle(title);
	board.setContent(content);
	
	boardDAO.updateBoard(board);
	
	response.sendRedirect("getBoardList.jsp");
%>