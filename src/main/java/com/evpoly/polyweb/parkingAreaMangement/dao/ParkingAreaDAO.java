package com.evpoly.polyweb.parkingAreaMangement.dao;

import org.apache.ibatis.annotations.Mapper;

import com.evpoly.polyweb.parkingAreaMangement.vo.ParkingAreaVO;

import java.util.List;

@Mapper
public interface ParkingAreaDAO {
    public List<ParkingAreaVO> getPkgAreas();
}
