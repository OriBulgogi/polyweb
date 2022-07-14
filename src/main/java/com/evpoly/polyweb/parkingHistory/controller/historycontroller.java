package com.evpoly.polyweb.parkingHistory.controller;

import java.io.BufferedInputStream;
import java.sql.Blob;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.evpoly.polyweb.parkingAreaMangement.controller.ParkingAreaController;
import com.evpoly.polyweb.parkingHistory.dao.parkingHistoryDAO;
import com.evpoly.polyweb.parkingHistory.service.parkingHistoryService;
import com.evpoly.polyweb.parkingHistory.vo.parkingHistoryVO;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller

public class historycontroller {

	@Resource
	parkingHistoryService parkinghistoryservice;

	@RequestMapping(value= "/history-date.do", method = RequestMethod.GET)
	@ResponseBody
	List<parkingHistoryVO> getDateHistory(ModelMap model){
		List<parkingHistoryVO> ret= parkinghistoryservice.getParkingHistroy();
		
		return ret;
	}

}
