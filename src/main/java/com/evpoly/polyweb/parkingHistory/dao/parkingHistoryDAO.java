package com.evpoly.polyweb.parkingHistory.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.evpoly.polyweb.parkingHistory.vo.parkingHistoryVO;

@Mapper
public interface parkingHistoryDAO {
	public List<parkingHistoryVO> getParkingHistroy();
	public Map<String, Object> selectImg();
}
