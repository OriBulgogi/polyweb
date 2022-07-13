package com.evpoly.polyweb.carnum.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Car {

	public int carInfoSeq;
	public int pkgAreaSeq;
	public int linSeq;
	public String linSeqName;
	public int mbrSeq;
	public String carNum;
	public String carEv;
	public String carDetect;
	public String carGetTm;
	public String carSetTm;
	public byte[] carImg;
	public String carTmOut;
	
}
