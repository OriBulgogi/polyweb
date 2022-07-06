package com.evpoly.polyweb.board.repo

public class BoardSql {
	
	public static final String INSERT_BOARD = """
		INSERT INTO ev_bbs (title, content, writer, regdate, cret_id, cret_dt)
		VALUES (:title, :content, :writer, SYSDATE(), :cretId, SYSDATE())
	""";
	
	public static final String SELECT_BOARD_LIST = """
		SELECT *
		FROM ev_bbs
		WHERE 1=1
	""";
	
	public static final String DELETE_BOARD = """
		DELETE FROM ev_bbs
		WHERE num = :num
	""";
	
	public static final String NUM_CONDITION = """
		AND num = :num
	""";
	
	public static final String SELECT_BOARD_FIVE = """
		SELECT *
		FROM ev_bbs
		ORDER BY cret_dt DESC
		LIMIT 5
	""";
	
}