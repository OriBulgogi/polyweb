package com.evpoly.polyweb.carnum.controller;

import java.sql.Blob;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.evpoly.polyweb.carnum.model.Car;
import com.evpoly.polyweb.carnum.service.CarService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CarNumController {

	private CarService carService;
	
	@Autowired
	public CarNumController(CarService carService) {
		this.carService = carService;
	}
	
	// 차량 번호별 관리
	@RequestMapping(value = "history-carnum")
	public String carNumHistory(ModelMap model) {
		List<Car> carList = carService.getCarList();
		//byte arr[] = 
		model.addAttribute("carList", carList);
		log.debug("=====================================carList : {}", carList);
		return "history-carnum";
	}
	
}
