package com.itwill.watch.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itwill.watch.domain.BoardFile;

public interface BoardFileDao {
	
	public List<BoardFile> findBoardFileAllByBoardNo(int boardNo) throws Exception;
	
	public BoardFile findBoardFileByBoardNo(HashMap boardFileMap) throws Exception;
	
	public int createFile(BoardFile boardfile) throws Exception;
	
	public int removeAllFileByBoardNo(int boardNo) throws Exception;
	
	public int removeFileByBoardNo(Map boardFileMap) throws Exception;
}
