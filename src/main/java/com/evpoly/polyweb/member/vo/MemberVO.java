package com.evpoly.polyweb.member.vo;

import lombok.Data;
import java.sql.Date;

@Data
public class MemberVO {
    private Integer mbrSeq;
    private String mbrId;
    private String mbrNm;
    private String mbrPw;
    private String mbrEmail;
    private String mbrPhonNo;
    private String mbrAddr;
    private Date cretDt;
}
