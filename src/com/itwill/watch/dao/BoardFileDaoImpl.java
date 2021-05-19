package com.itwill.watch.dao;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.watch.dao.mapper.BoardFileMapper;
import com.itwill.watch.domain.BoardFile;

public class BoardFileDaoImpl implements BoardFileDao{
	
	private SqlSessionFactory sqlSessionFactory;
	
	public BoardFileDaoImpl() {
		try {
			InputStream mybatisConfigInputStream = Resources.getResourceAsStream("mybatis-config.xml");
			SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
			this.sqlSessionFactory = sqlSessionFactoryBuilder.build(mybatisConfigInputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<BoardFile> findBoardFileAllByBoardNo(int boardNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardFileMapper boardFileMapper= sqlSession.getMapper(BoardFileMapper.class);
		List<BoardFile> boardFileList= boardFileMapper.findBoardFileAllByBoardNo(boardNo);
		sqlSession.close();
		return boardFileList;
	}

	@Override
	public BoardFile findBoardFileByBoardNo(HashMap boardFileMap) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardFileMapper boardFileMapper= sqlSession.getMapper(BoardFileMapper.class);
		BoardFile findBoardFile = boardFileMapper.findBoardFileByBoardNo(boardFileMap);
		sqlSession.close();
		return findBoardFile;
	}

	@Override
	public int createFile(BoardFile boardfile) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardFileMapper boardFileMapper= sqlSession.getMapper(BoardFileMapper.class);
		int row = boardFileMapper.createFile(boardfile);
		sqlSession.close();
		return row;
	}

	@Override
	public int removeAllFileByBoardNo(int boardNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardFileMapper boardFileMapper= sqlSession.getMapper(BoardFileMapper.class);
		int row = boardFileMapper.removeAllFileByBoardNo(boardNo);
		sqlSession.close();
		return row;
	}

	@Override
	public int removeFileByBoardNo(Map boardFileMap) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardFileMapper boardFileMapper= sqlSession.getMapper(BoardFileMapper.class);
		int row = boardFileMapper.removeFileByBoardNo(boardFileMap);
		sqlSession.close();
		return row;
	}
	
	
}
