package com.itwill.watch.test;

import java.util.HashMap;

import com.itwill.watch.dao.BoardFileDao;
import com.itwill.watch.dao.BoardFileDaoImpl;
import com.itwill.watch.domain.BoardFile;

public class BoardFileDaoTestMain {

	public static void main(String[] args) throws Exception {
		BoardFileDao boardFileDao = new BoardFileDaoImpl();
		
		System.out.println("#########1번게시글 첨부파일 모두###########"+boardFileDao.findBoardFileAllByBoardNo(1));
		/*
		HashMap hashmap1 = new HashMap();
		hashmap1.put("boardNo", 1);
		hashmap1.put("boardFileNo", 1);
		System.out.println("#########1번게시글 첨부파일 1개###########"+boardFileDao.findBoardFileByBoardNo(hashmap1));
		
		HashMap hashmap2 = new HashMap();
		hashmap2.put("boardNo", 1);
		hashmap2.put("boardFileNo", 2);
		System.out.println("#########1번게시글 첨부파일 1개###########"+boardFileDao.findBoardFileByBoardNo(hashmap2));
		
		HashMap hashmap3 = new HashMap();
		hashmap3.put("boardNo", 1);
		hashmap3.put("boardFileNo", 3);
		System.out.println("#########1번게시글 첨부파일 1개###########"+boardFileDao.findBoardFileByBoardNo(hashmap3));
		
		BoardFile boardFile = new BoardFile(0, "17번게시물 -첨부파일", 17);
		System.out.println("#########첨부파일 업로드###########"+boardFileDao.createFile(boardFile));
		
		System.out.println("#########첨부파일 삭제###########"+boardFileDao.removeAllFileByBoardNo(2));
*/
		HashMap removeMap = new HashMap();
		removeMap.put("boardNo", 9);
		removeMap.put("boardFileNo", 32);
		System.out.println("#########첨부파일 삭제###########"+boardFileDao.removeFileByBoardNo(removeMap));
	}

}
