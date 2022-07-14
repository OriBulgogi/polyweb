package com.evpoly.polyweb.parkingHistory.vo;

import java.sql.Blob;
import java.util.Map;

import lombok.Data;

@Data
public class parkingHistoryVO {
	String carNum;
	String carImg;  
	String linSeqName;
	String carGetTm;
	String carSetTm;
	String violationTm;
	String pkgAreaName;
	String rtnImg;
}
