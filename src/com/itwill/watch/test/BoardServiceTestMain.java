package com.itwill.watch.test;

import java.util.HashMap;
import java.util.Map;

import com.itwill.watch.domain.Board;
import com.itwill.watch.service.BoardService;

public class BoardServiceTestMain {

	public static void main(String[] args) throws Exception {
		BoardService boardService = new BoardService();
		/*
		Board board = new Board(0, "[환불문의]", null, "제목999", "내용999", 0, 0, 0, 9);
		boardService.createBoard(board);
		
		Board board = new Board(24, "[재수정]", null, "제목555수정", "내용555수정", 0, 0, 0, 5);
		System.out.println(boardService.updateBoard(board));
		
		
		
		Board updateBoard = new Board(24, "[답변답변]", null, "제목555답변", "내용555답변", 24, 1, 0, 5);
		System.out.println(boardService.createBoardComment(updateBoard));
		
		
		Map idxMap = new HashMap();
		idxMap.put("startNo", 1);
		idxMap.put("endNo", 10);
		System.out.println(boardService.findBoardByIdxRangeParaMap(idxMap));
		
		System.out.println(boardService.findBoardByNo(16));
		System.out.println(boardService.findBoardByUserNo(10));
		
		
		if(boardService.isExistedCommByGroupNo(24)==1) {
			System.out.println("답글이 있어 삭제 불가능");
		}else {
			System.out.println(boardService.removeBoard(24));
		}
		*/
		System.out.println(boardService.findBoardListAll());
	}

}
