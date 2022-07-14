package com.evpoly.polyweb.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.evpoly.polyweb.board.vo.BoardVO;

@Mapper
public interface BoardDAO {

	public List<BoardVO> selectBoardList();
	
	public BoardVO insertBoard(BoardVO boardVO);
	
	public Integer deleteBoard(int num);
	
	public BoardVO selectBoardDetail(int num) throws Exception;

}
