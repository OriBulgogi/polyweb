package com.evpoly.polyweb.member.controller;


import com.evpoly.polyweb.member.service.MemberService;
import com.evpoly.polyweb.member.vo.MemberVO;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@Log4j2
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping(value = "/login")
    public  String login() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam Map<String, String> map, Model model, HttpSession session) {
        try {
            System.out.println(map);
            if (map.get("mbrId") == null || map.get("mbrPw") == null) {
                model.addAttribute("msg", "아이디 또는 비밀번호를 입력해주세요!");
                return "error/error";
            }

            MemberVO memberVO = memberService.login(map);

            System.out.println(memberVO);

            if (memberVO != null) {
                session.setAttribute("user", memberVO);
                return "redirect:index";
            } else {

                model.addAttribute("msg", "아이디 또는 비밀번호가 올바르지 않습니다.");
                return "error/error";
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "로그인 중 문제가 발생했습니다.");
            return "error/error";
        }
    }

}
