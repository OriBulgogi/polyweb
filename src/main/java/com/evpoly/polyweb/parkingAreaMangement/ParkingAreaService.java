package com.evpoly.polyweb.parkingAreaMangement;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ParkingAreaService {

    @Resource
    ParkingAreaDAO parkingAreaDAO;

    public List<ParkingAreaVO> getPkgAreas() {
        return parkingAreaDAO.getPkgAreas();
    }

}
