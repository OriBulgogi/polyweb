package com.evpoly.polyweb.carnum.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.evpoly.polyweb.carnum.vo.CarVO;

@Mapper
public interface CarDAO {

	public List<CarVO> selectCarList();
	
}
