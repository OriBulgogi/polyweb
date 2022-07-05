package com.evpoly.polyweb.staffPage.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.evpoly.polyweb.staffPage.dao.StaffPageDAO;
import com.evpoly.polyweb.staffPage.vo.StaffPageVO;

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
	
}
