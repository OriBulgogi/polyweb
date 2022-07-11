package com.evpoly.polyweb.parkingAreaMangement.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evpoly.polyweb.parkingAreaMangement.dao.ParkingAreaDAO;
import com.evpoly.polyweb.parkingAreaMangement.vo.ParkingAreaVO;

@Service
public class ParkingAreaServiceImpl implements ParkingAreaService {
	
	@Autowired
	ParkingAreaDAO parkingAreadao;
	
	@Override
	public List<ParkingAreaVO> getPkgAreas() {
		return parkingAreadao.getPkgAreas();
	}
	
}
