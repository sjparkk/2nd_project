package com.itwill.watch.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itwill.watch.dao.BoardFileDao;
import com.itwill.watch.dao.BoardFileDaoImpl;
import com.itwill.watch.domain.BoardFile;

public class BoardFileService {
	private BoardFileDao boardFileDao;
	
	public BoardFileService() {
		boardFileDao = new BoardFileDaoImpl();
	}
	
	
	/*
	 * select
	 */
	public List<BoardFile> findBoardFileAllByBoardNo(int boardNo) throws Exception{
		return boardFileDao.findBoardFileAllByBoardNo(boardNo);
	}
	
	public BoardFile findBoardFileByBoardNo(HashMap boardFileMap) throws Exception{
		return boardFileDao.findBoardFileByBoardNo(boardFileMap);
	}
	
	/*
	 * insert
	 */
	public int createFile(BoardFile boardfile) throws Exception{
		return boardFileDao.createFile(boardfile);
	}
	
	/*
	 * remove
	 */
	public int removeAllFileByBoardNo(int boardNo) throws Exception{
		return boardFileDao.removeAllFileByBoardNo(boardNo);
	}
	
	public int removeFileByBoardNo(Map boardFileMap) throws Exception{
		return boardFileDao.removeFileByBoardNo(boardFileMap);
	}
}
