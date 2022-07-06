package com.evpoly.polyweb.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.evpoly.polyweb.board.model.Board;
import com.evpoly.polyweb.board.service.BoardService;
import com.evpoly.polyweb.member.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class BoardController {

	private BoardService boardService;
	
	@Autowired
	public BoardController(BoardService boardService) {
		this.boardService = boardService;
	}
	
	@RequestMapping(value = "notice", method = RequestMethod.GET)
    public String notice(ModelMap model) {
    	List<Board> boardList = boardService.getBoardList();
    	model.addAttribute("boardList", boardList);
        return "notice";
    }
	
	// 게시글 추가
	@PostMapping(value = "/notice-form")
	public String insert(Board board, HttpSession session) throws Exception {
		try {
			MemberVO member = (MemberVO) session.getAttribute("user");
			board.setWriter(member.getMbrNm());
			board.setCretId(member.getMbrId());
			String content = board.getContent();
			content = content.replace("\r\n", "<br>");
			board.setContent(content);
			//log.debug(member.toString());
			log.debug("board = {}", board.toString());
			boardService.insert(board);
			return "redirect:/notice";
		} catch (Exception e) {
			log.error(e.toString());
			return "redirect:/notice";
		}
	}
	
	@RequestMapping(value = "/notice-detail")
	public String detailPage() {
		return "notice-detail";
	}
	
	@RequestMapping(value = "/boardDelete")
	public String deleteBoard(@RequestParam("num") int num) throws Exception {
		try {
			log.debug("delete board num = {}", num);
			boardService.delete(num);
			return "redirect:/notice";
		} catch (Exception e) {
			return "redirect:/notice";
		}
	}
	
	// 게시글 상세조회
	@RequestMapping(value = "/noticeDetail")
	public String noticeDetail(@RequestParam("num") int num, ModelMap model) throws Exception {
		
		try {
			Board board = boardService.boardRead(num);
			System.out.println(board);
			model.addAttribute("board", board);
			return "notice-detail";
		} catch (Exception e) {
			return "notice";
		}
		
	}
	
}
