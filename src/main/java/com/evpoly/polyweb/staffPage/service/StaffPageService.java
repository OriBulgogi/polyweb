package com.evpoly.polyweb.staffPage.service;

import java.util.List;

import com.evpoly.polyweb.staffPage.vo.StaffPageVO;

public interface StaffPageService {
	public List<StaffPageVO> getStaffs();

	public String delete(int mbrSeq);


}
