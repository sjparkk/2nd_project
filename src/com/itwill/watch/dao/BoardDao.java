package com.itwill.watch.dao;

import java.util.List;
import java.util.Map;

import com.itwill.watch.domain.Board;

public interface BoardDao {
	
	public int createBoard(Board board) throws Exception;
	
	public int createBoardComment(Board board) throws Exception;
	
	public int updateBoard(Board board) throws Exception;
	
	public int removeBoard(int boardNo) throws Exception;
	
	public List<Board> findBoardListAll() throws Exception;
	
	public List<Board> findBoardByIdxRangeParaMap(Map idxRangeMap) throws Exception;
	
	public Board findBoardByNo(int boardNo) throws Exception;
	
	public List<Board> findBoardByUserNo(int userNo) throws Exception;
	
	public int commCount(int groupNo) throws Exception;
	
	public int isExistedCommByGroupNo(int groupNo) throws Exception;
}
