package com.evpoly.polyweb.parkingAreaMangement;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ParkingAreaDAO {
    public List<ParkingAreaVO> getPkgAreas();
}
