package com.evpoly.polyweb.home.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "/", method = RequestMethod.GET)
	public String homeone(Locale locale, Model model) {
		logger.info("###### HomeController #####");
		return "login";
	}

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String index(){
        return "index";
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
