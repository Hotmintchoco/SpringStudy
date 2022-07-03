package com.springbook.view.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;

public class GetBoardListController implements Controller{

   @Override
   public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
      System.out.println("글 목록 조회 처리");
      
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
//      3. 검색 결과를 세션에 저장하고 목록 화면으로 이동한다.
//      HttpSession session = request.getSession();
//      session.setAttribute("boardList", boardList);
//      return "getBoardList";
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("boardList", boardList);
      mav.setViewName("getBoardList");
      return mav;
   }
   
}



