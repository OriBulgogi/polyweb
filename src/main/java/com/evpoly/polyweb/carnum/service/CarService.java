package com.evpoly.polyweb.carnum.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.evpoly.polyweb.carnum.dao.CarDAO;
import com.evpoly.polyweb.carnum.vo.CarVO;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class CarService {

	@Resource
	CarDAO carDAO;
	
	// 차 목록
	public List<CarVO> getCarList() {
		List<CarVO> carList = new ArrayList<>();
		carList = carDAO.selectCarList();
		return carList;
	}
	
}
