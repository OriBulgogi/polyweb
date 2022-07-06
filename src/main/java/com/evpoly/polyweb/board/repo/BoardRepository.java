package com.evpoly.polyweb.board.repo;

import java.util.List;

import org.springframework.jdbc.core.namedparam.EmptySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.evpoly.polyweb.board.model.Board;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class BoardRepository {

	private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	private final BoardRowmapper boardRowmapper;
	
	public BoardRepository(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
		this.boardRowmapper = new BoardRowmapper();
	}
	
	// 게시글 리스트
	public List<Board> findList() {
		log.debug("findList query : {}", BoardSql.SELECT_BOARD_LIST);
		return namedParameterJdbcTemplate.query(BoardSql.SELECT_BOARD_LIST
												, EmptySqlParameterSource.INSTANCE
												, this.boardRowmapper);
	}
	
	// 게시글 추가
	public Board insert(Board board) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		SqlParameterSource parameterSource = new MapSqlParameterSource("title", board.getTitle())
														.addValue("content", board.getContent())
														.addValue("writer", board.getWriter())
														.addValue("regdate", board.getRegdate())
														.addValue("cretId", board.getCretId())
														.addValue("cretDt", board.getCretDt());
		int affectedRows = namedParameterJdbcTemplate.update(BoardSql.INSERT_BOARD, parameterSource, keyHolder);
		log.debug("{} inserted, new id = {}", affectedRows, keyHolder.getKey());
		board.setNum(keyHolder.getKey().intValue());
		return board;
	}
	
	// 게시글 삭제
	public Integer delete(int num) {
		SqlParameterSource parameterSource = new MapSqlParameterSource("num", num);
		log.debug("delete board num = {}", num);
		return namedParameterJdbcTemplate.update(BoardSql.DELETE_BOARD, parameterSource);
	}

	// 게시글 조회
	public Board detail(int num) {
		log.debug("board num = {}", num);
		String qry = BoardSql.SELECT_BOARD_LIST
						+ BoardSql.NUM_CONDITION;
		SqlParameterSource parameterSource = new MapSqlParameterSource("num", num);
		return namedParameterJdbcTemplate.queryForObject(qry, parameterSource, this.boardRowmapper);
	}
	
	// 게시글 리스트
	public List<Board> findListForIndex() {
		log.debug("findList query : {}", BoardSql.SELECT_BOARD_FIVE);
		return namedParameterJdbcTemplate.query(BoardSql.SELECT_BOARD_FIVE
												, EmptySqlParameterSource.INSTANCE
												, this.boardRowmapper);
	}
	
}
