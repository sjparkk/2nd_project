package com.itwill.watch.dao.mapper;

import java.util.List;
import java.util.Map;

import com.itwill.watch.domain.Board;

public interface BoardMapper {
	
	public int createBoard(Board board);
	
	public int createBoardComment(Board board);
	
	public int updateBoard(Board board);
	
	public int removeBoard(int boardNo);
	
	public List<Board> findBoardListAll();
	
	public List<Board> findBoardByIdxRangeParaMap(Map idxRangeMap);
	
	public Board findBoardByNo(int boardNo);
	
	public List<Board> findBoardByUserNo(int userNo);
	
	public int commCount(int groupNo);
	
	public int isExistedCommByGroupNo(int groupNo);
	
}
