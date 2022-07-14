package com.evpoly.polyweb.parkingHistory.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evpoly.polyweb.parkingHistory.dao.parkingHistoryDAO;
import com.evpoly.polyweb.parkingHistory.vo.parkingHistoryVO;

@Service
public class parkingHistoryServiceImpl implements parkingHistoryService {

	@Autowired
	parkingHistoryDAO parkinghistoryDAO;
	
	@Override
	public List<parkingHistoryVO> getParkingHistroy() {
		
		return parkinghistoryDAO.getParkingHistroy();
	}

	@Override
	public Map<String, Object> selectImg() {		
		return parkinghistoryDAO.selectImg();
	}

}
