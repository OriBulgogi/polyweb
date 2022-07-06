package com.evpoly.polyweb.board.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Board {

	public int num;
	public String title;
	public String content;
	public String writer;
	public int viewnum;
	public String regdate;
	public String infoReTm;
	public String infoDelTm;
	public String cretId;
	public String cretDt;
	public String amdrId;
	public String amdDt;
	
}
