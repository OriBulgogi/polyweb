package com.evpoly.polyweb.staffPage.vo;

import java.sql.Date;

import lombok.Data;


@Data
public class StaffPageVO {
	private int mbrSeq;
	private int pkgAreaSeq;
	private String mbrId;
	private String mbrPw;
	private int mbrState;
	private int mbrPosition;
	private String mbrEmail;
	private String mbrNm;
	private Date mbrRegTm;

}
