package com.evpoly.polyweb.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.evpoly.polyweb.board.model.Board;
import com.evpoly.polyweb.board.repo.BoardRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardService {

	private final BoardRepository boardRepository;
	
	public BoardService(BoardRepository boardRepository) {
		this.boardRepository = boardRepository;
	}
	
	// 게시글 목록
	public List<Board> getBoardList() {
		return this.boardRepository.findList();
	}
	
	// 게시글 추가
	public Board insert(Board board) {
		return this.boardRepository.insert(board);
	}
	
	// 게시글 삭제
	public Integer delete(int num) {
		log.debug("delete board num = {}", num);
		return this.boardRepository.delete(num);
	}

	public Board boardRead(int num) throws Exception{
		return this.boardRepository.detail(num);
	}

	// index page 공지 목록
	public List<Board> getBoardListForIndex() {
		return this.boardRepository.findListForIndex();
	}
}
