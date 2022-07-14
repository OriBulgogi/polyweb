package com.evpoly.polyweb.mainPage.controller;

import com.evpoly.polyweb.board.dao.BoardDAO;
import com.evpoly.polyweb.board.service.BoardService;
import com.evpoly.polyweb.board.vo.BoardVO;
import com.evpoly.polyweb.mainPage.dao.MainPageDAO;
import com.evpoly.polyweb.staffPage.service.StaffPageService;
import com.evpoly.polyweb.staffPage.vo.PagingVO;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j2;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Log4j2
@Controller
public class MainController {

    @Autowired
    MainPageDAO mainPageDAO;
    
    @Autowired
    StaffPageService staffPageService;
    
    @Autowired
    BoardDAO boardDAO;
    
    @Autowired
    BoardService boardService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
	public String homeone(Locale locale, Model model) {
        log.debug("home controller");
		return "login";
	}

    @RequestMapping("/index")
    public String index(Model model){
        //cer info get tm
        List<Integer> countList = new ArrayList<>();
        List<Integer> countViolationList = new ArrayList<>();

        countList.add(mainPageDAO.getDayCount());
        countList.add(mainPageDAO.getWeekCount());
        countList.add(mainPageDAO.getMonthCount());

        countViolationList.add(mainPageDAO.getViolationDayCount());
        countViolationList.add(mainPageDAO.getViolationWeekCount());
        countViolationList.add(mainPageDAO.getViolationMonthCount());


        model.addAttribute("countList",countList);
        model.addAttribute("countViolationList",countViolationList);

        List<BoardVO> boardList = boardService.getBoardList();
        model.addAttribute("boardList", boardList);

        return "/index";
    }

//    @RequestMapping(value = "history-carnum", method = RequestMethod.GET)
//    public String carnum(){
//        return "history-carnum";
//    }

    @RequestMapping(value = "history-date", method = RequestMethod.GET)
    public String date(){
        return "history-date";
    }

    @RequestMapping(value = "manage-area", method = RequestMethod.GET)
    public String area(){
        return "manage-area";
    }

    @RequestMapping(value = "notice-form", method = RequestMethod.GET)
    public String form(){
        return "notice-form";
    }

  //직원 정보
    @RequestMapping(value = "staff", method = RequestMethod.GET)
    public String staff(PagingVO vo, Model model
    		, @RequestParam(value="nowPage", required=false)String nowPage
    		, @RequestParam(value="cntPerPage", required=false)String cntPerPage){
    	
    	int total = staffPageService.countBoard();
    	if (nowPage == null && cntPerPage == null) {
    		nowPage = "1";
    		cntPerPage = "5";
    	} else if (nowPage == null ) {
    		nowPage = "1";
    	} else if (cntPerPage == null) { 
    		cntPerPage = "5";
    	} else if ( Integer.parseInt(cntPerPage) > 5) {
    		nowPage = "1";
    	}
    	vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
    	model.addAttribute("paging", vo);
    	model.addAttribute("staffs", staffPageService.selectBoard(vo));
    	return "staff";
    }

    //직원 등록
    @RequestMapping(value = "staff-form", method = RequestMethod.GET)
    public String staffForm(Model model){
    	model.addAttribute("pkgAreas", staffPageService.getPkgs());
    	//System.out.println("pkgAreas"+staffPageService.getPkgs());
        return "staff-form";
    }
}
