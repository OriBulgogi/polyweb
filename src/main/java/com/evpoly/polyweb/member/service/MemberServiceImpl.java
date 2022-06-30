package com.evpoly.polyweb.member.service;

import com.evpoly.polyweb.member.dao.MemberDAO;
import com.evpoly.polyweb.member.vo.MemberVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

@Service
public class MemberServiceImpl implements MemberService {

    @Resource
    MemberDAO memberDAO;

    @Override
    public MemberVO login(Map<String, String> map) {
        return memberDAO.login(map);
    }
}
