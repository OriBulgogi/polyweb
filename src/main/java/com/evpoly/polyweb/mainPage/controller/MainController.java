package com.evpoly.polyweb.mainPage.controller;

import com.evpoly.polyweb.mainPage.dao.MainPageDAO;
import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j2;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Log4j2
@Controller
public class MainController {

    @Autowired
    MainPageDAO mainPageDAO;

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


        return "/index";
    }

    @RequestMapping(value = "history-carnum", method = RequestMethod.GET)
    public String carnum(){
        return "history-carnum";
    }

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

    @RequestMapping(value = "notice", method = RequestMethod.GET)
    public String notice(){
        return "notice";
    }

    @RequestMapping(value = "staff", method = RequestMethod.GET)
    public String staff(){
        return "staff";
    }
    
    @RequestMapping(value = "notice-form")
    public String noticeform() {
    	return "notice-form";
    }
}
