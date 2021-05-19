package com.itwill.watch.dao.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itwill.watch.domain.BoardFile;

public interface BoardFileMapper {

	public List<BoardFile> findBoardFileAllByBoardNo(int boardNo);
	
	public BoardFile findBoardFileByBoardNo(HashMap boardFileMap);
	
	public int createFile(BoardFile boardfile);
	
	public int removeAllFileByBoardNo(int boardNo);
	
	public int removeFileByBoardNo(Map boardFileMap);
}
