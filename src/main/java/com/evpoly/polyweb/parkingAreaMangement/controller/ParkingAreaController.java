package com.evpoly.polyweb.parkingAreaMangement.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.evpoly.polyweb.parkingAreaMangement.service.ParkingAreaService;
import com.evpoly.polyweb.parkingAreaMangement.vo.ParkingAreaVO;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Log4j2
@Controller
public class ParkingAreaController {

    @Resource
    ParkingAreaService parkingAreaService;


    @RequestMapping(value = "/manage-area.do", method = RequestMethod.GET)
    @ResponseBody
    public List<ParkingAreaVO> pkgAreas(Model model){

        List<ParkingAreaVO> pkgAreas = parkingAreaService.getPkgAreas();
        log.info(pkgAreas);
        
        return pkgAreas;
    }
}
