package com.itwill.watch.service;

import java.util.List;
import java.util.Map;

import com.itwill.watch.dao.BoardDao;
import com.itwill.watch.dao.BoardDaoImpl;
import com.itwill.watch.domain.Board;

public class BoardService {
	private BoardDao boardDao;
	
	public BoardService() throws Exception{
		boardDao = new BoardDaoImpl();
	}
	
	/*
	 * insert
	 */
	public int createBoard(Board board) throws Exception {
		return boardDao.createBoard(board);
	}
	
	public int createBoardComment(Board board) throws Exception {
		return boardDao.createBoardComment(board);
	}
	
	/*
	 * update
	 */
	public int updateBoard(Board board) throws Exception{
		return boardDao.updateBoard(board);
	}
	
	/*
	 * remove
	 */
	public int removeBoard(int boardNo) throws Exception{
		return boardDao.removeBoard(boardNo);
	}
	
	/*
	 * select
	 */
	public List<Board> findBoardListAll() throws Exception{
		return boardDao.findBoardListAll();
	}
	
	public List<Board> findBoardByIdxRangeParaMap(Map idxRangeMap) throws Exception{
		return boardDao.findBoardByIdxRangeParaMap(idxRangeMap);
	}
	
	public Board findBoardByNo(int boardNo) throws Exception{
		return boardDao.findBoardByNo(boardNo);
	}
	
	public List<Board> findBoardByUserNo(int userNo) throws Exception{
		return boardDao.findBoardByUserNo(userNo);
	}
	
	public int commCount(int groupNo) throws Exception {
		return boardDao.commCount(groupNo);
	}
	
	public int isExistedCommByGroupNo(int groupNo) throws Exception{
		return boardDao.isExistedCommByGroupNo(groupNo);
	}
	
	
}
