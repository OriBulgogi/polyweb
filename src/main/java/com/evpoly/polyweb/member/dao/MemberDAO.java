package com.evpoly.polyweb.member.dao;

import com.evpoly.polyweb.member.vo.MemberVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface MemberDAO {
    public MemberVO login(Map<String, String> map);
}
