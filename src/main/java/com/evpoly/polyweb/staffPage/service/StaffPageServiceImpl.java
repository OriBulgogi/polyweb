package com.evpoly.polyweb.staffPage.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.evpoly.polyweb.staffPage.dao.StaffPageDAO;
import com.evpoly.polyweb.staffPage.vo.StaffPageVO;
import com.evpoly.polyweb.staffPage.vo.PkgAreaVO;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class StaffPageServiceImpl implements StaffPageService{

	@Resource
	StaffPageDAO staffPageDAO;
	
	@Override
	public List<StaffPageVO> getStaffs() {
		System.out.println("staffService");
		List<StaffPageVO> staffs = new ArrayList<>();
		staffs = staffPageDAO.getStaffs();
		System.out.println("staffs: "+ staffs);
		return staffs;
	}

	@Override
	public String delete(int mbrSeq) {
		staffPageDAO.delete(mbrSeq);
		String answer = "ok";
		return answer;
	}

	@Override
	public String save(StaffPageVO staffPageVo) {
		staffPageDAO.save(staffPageVo);
		String answer = "ok";
		return answer;
	}
	
	// 주차 구역 정보 받아오는 것
	@Override
	public List<PkgAreaVO> getPkgs() {
		List<PkgAreaVO> pkgs = new ArrayList<>();
		pkgs = staffPageDAO.getPkgs();
		return pkgs;
	}


	
	
}
