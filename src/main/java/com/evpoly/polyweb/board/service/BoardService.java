package com.evpoly.polyweb.board.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.evpoly.polyweb.board.dao.BoardDAO;
import com.evpoly.polyweb.board.vo.BoardVO;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class BoardService {

	@Resource
	BoardDAO boardDAO;
	
	// 게시글 목록
	public List<BoardVO> getBoardList() {
		List<BoardVO> boardList = new ArrayList<>();
		boardList = boardDAO.selectBoardList();
		return boardList;
	}
	
	// 게시글 추가
	public BoardVO insert(BoardVO board) {
		return boardDAO.insertBoard(board);
	}
	
	// 게시글 삭제
	public Integer delete(int num) {
		return boardDAO.deleteBoard(num);
	}

	// 게시글 상세보기
	public BoardVO boardRead(int num) throws Exception{
		return boardDAO.selectBoardDetail(num);
	}

}
