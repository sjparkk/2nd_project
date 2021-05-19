package com.itwill.watch.dao;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.watch.dao.mapper.BoardMapper;
import com.itwill.watch.domain.Board;

public class BoardDaoImpl implements BoardDao{
	private SqlSessionFactory sqlSessionFactory;
	
	public BoardDaoImpl() {
		try {
			InputStream mybatisConfigInputStream = Resources.getResourceAsStream("mybatis-config.xml");
			SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
			this.sqlSessionFactory = sqlSessionFactoryBuilder.build(mybatisConfigInputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int createBoard(Board board) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper =  sqlSession.getMapper(BoardMapper.class);
		int row =  boardMapper.createBoard(board);
		sqlSession.close();
		return row;
	}

	@Override
	public int createBoardComment(Board board) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		int row =boardMapper.createBoardComment(board);
		sqlSession.close();
		return row;
	}

	@Override
	public int updateBoard(Board board) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		int row = boardMapper.updateBoard(board);
		sqlSession.close();
		return row;
	}

	@Override
	public int removeBoard(int boardNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		int row  =boardMapper.removeBoard(boardNo);
		sqlSession.close();
		return row;
	}

	@Override
	public List<Board> findBoardListAll() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		List<Board> boardList = boardMapper.findBoardListAll();
		sqlSession.close();
		return boardList;
	}

	@Override
	public List<Board> findBoardByIdxRangeParaMap(Map idxRangeMap) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		List<Board> boardRangeList =boardMapper.findBoardByIdxRangeParaMap(idxRangeMap);
		sqlSession.close();
		return boardRangeList;
	}

	@Override
	public Board findBoardByNo(int boardNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		Board findBoard = boardMapper.findBoardByNo(boardNo);
		sqlSession.close();
		return findBoard;
	}

	@Override
	public List<Board> findBoardByUserNo(int userNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		List<Board> boardByUserList = boardMapper.findBoardByUserNo(userNo);
		sqlSession.close();
		return boardByUserList;
	}
	
	
	@Override
	public int commCount(int groupNo) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		int commentCount = boardMapper.commCount(groupNo);
		sqlSession.close();
		return commentCount;
	}
	
	@Override
	public int isExistedCommByGroupNo(int groupNo) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		int isExistedComm = boardMapper.isExistedCommByGroupNo(groupNo);
		sqlSession.close();
		return isExistedComm;
	}
	
	
	
	
}
