package com.evpoly.polyweb.parkingHistory.service;

import java.util.List;
import java.util.Map;

import com.evpoly.polyweb.parkingHistory.vo.parkingHistoryVO;

public interface parkingHistoryService {
	public List<parkingHistoryVO> getParkingHistroy();
	public Map<String, Object> selectImg();
}
