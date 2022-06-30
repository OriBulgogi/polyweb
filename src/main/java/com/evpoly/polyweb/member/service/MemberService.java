package com.evpoly.polyweb.member.service;

import com.evpoly.polyweb.member.vo.MemberVO;

import java.util.Map;


public interface MemberService {
    public MemberVO login(Map<String, String> map);
}
