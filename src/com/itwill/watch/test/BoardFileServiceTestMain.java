package com.itwill.watch.test;

import java.util.HashMap;
import java.util.Map;

import com.itwill.watch.domain.BoardFile;
import com.itwill.watch.service.BoardFileService;

public class BoardFileServiceTestMain {

	public static void main(String[] args) throws Exception {
		BoardFileService boardFileService = new BoardFileService();
		/*
		BoardFile boardFile = new BoardFile(0, "6번게시물 -첨부파일", 6);
		System.out.println("#########첨부파일 업로드###########"+boardFileService.createFile(boardFile));
		
		boardFile = new BoardFile(0, "7번게시물 -첨부파일", 7);
		System.out.println("#########첨부파일 업로드###########"+boardFileService.createFile(boardFile));
		
		boardFile = new BoardFile(0, "8번게시물 -첨부파일", 8);
		System.out.println("#########첨부파일 업로드###########"+boardFileService.createFile(boardFile));
		
		boardFile = new BoardFile(0, "9번게시물 -첨부파일1", 9);
		System.out.println("#########첨부파일 업로드###########"+boardFileService.createFile(boardFile));
		
		boardFile = new BoardFile(0, "9번게시물 -첨부파일2", 9);
		System.out.println("#########첨부파일 업로드###########"+boardFileService.createFile(boardFile));
		
		
		System.out.println("#########9번게시글 첨부파일 모두###########"+boardFileService.findBoardFileAllByBoardNo(9));
			
		HashMap hashmap1 = new HashMap();
		hashmap1.put("boardNo", 9);
		hashmap1.put("boardFileNo", 31);
		System.out.println("#########9번게시글 첨부파일 1개###########"+boardFileService.findBoardFileByBoardNo(hashmap1));
		
		HashMap hashmap2 = new HashMap();
		hashmap2.put("boardNo", 9);
		hashmap2.put("boardFileNo", 32);
		System.out.println("#########9번게시글 첨부파일 1개###########"+boardFileService.findBoardFileByBoardNo(hashmap2));
		*/
			
		//System.out.println("#########첨부파일 전부 삭제###########"+boardFileService.removeAllFileByBoardNo(6));

		Map removeMap = new HashMap();
		removeMap.put("boardNo", 9);
		removeMap.put("boardFileNo", 31);
		System.out.println("#########첨부파일 1개 삭제###########"+boardFileService.removeFileByBoardNo(removeMap));

	}

}
