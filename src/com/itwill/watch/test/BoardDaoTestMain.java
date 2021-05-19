package com.itwill.watch.test;

import java.util.HashMap;
import java.util.Map;

import com.itwill.watch.dao.BoardDao;
import com.itwill.watch.dao.BoardDaoImpl;
import com.itwill.watch.domain.Board;
import com.itwill.watch.domain.UserInfo;

public class BoardDaoTestMain {

	public static void main(String[] args) throws Exception {
		BoardDao boardDao = new BoardDaoImpl();
		
		boardDao.createBoard(new Board(0, "[배송문의]", null, "제목", "내용", 0, 1, 0, 3));
		
		/*
		System.out.println("########findBoardListAll#########"+boardDao.findBoardListAll());
		System.out.println("########findBoardByNo#########"+boardDao.findBoardByNo(16));
		System.out.println("########findBoardByUserNo#########"+boardDao.findBoardByUserNo(8));
		
		Map idxMap = new HashMap();
		idxMap.put("startNo", 1);
		idxMap.put("endNo", 10);
		System.out.println("########findBoardByIdxRangeParaMap#########"+boardDao.findBoardByIdxRangeParaMap(idxMap));
		
		
		Board updateBoard = new Board(16, "[수정수정]", null, "제목수정수정", "내용수정수정", 16, 1, 0, 10);
		System.out.println(boardDao.updateBoard(updateBoard));
		
		System.out.println(boardDao.removeBoard(22));
		
		boardDao.createBoardComment(new Board(0, "[답변의답변]", null, "RE:제목555답변", "RE:내용555답변", 24, 2, 1, 5));
		
		System.out.println(boardDao.commCount(24));
		
		if(boardDao.isExistedCommByGroupNo(24)==1) {
			System.out.println("답글이 있어 삭제 불가능");
		}else {
			boardDao.removeBoard(24);
		}*/
	}

}
