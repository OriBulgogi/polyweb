package com.evpoly.polyweb.board.repo;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.evpoly.polyweb.board.model.Board;

public class BoardRowmapper implements RowMapper<Board> {

	@Override
	public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
		Board board = new Board();
		board.setNum(rs.getInt("num"));
		board.setTitle(rs.getString("title"));
		board.setContent(rs.getString("content"));
		board.setWriter(rs.getString("writer"));
		board.setViewnum(rs.getInt("viewnum"));
		board.setRegdate(rs.getString("regdate"));
		board.setInfoReTm(rs.getString("info_re_tm"));
		board.setInfoDelTm(rs.getString("info_del_tm"));
		board.setCretId(rs.getString("cret_id"));
		board.setCretDt(rs.getString("cret_dt"));
		board.setAmdrId(rs.getString("amdr_id"));
		board.setAmdDt(rs.getString("amd_dt"));
		return board;
	}

}
