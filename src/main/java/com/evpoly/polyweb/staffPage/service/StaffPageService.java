package com.evpoly.polyweb.staffPage.service;

import java.util.List;

import com.evpoly.polyweb.staffPage.vo.StaffPageVO;
import com.evpoly.polyweb.staffPage.vo.PkgAreaVO;

public interface StaffPageService {
	public List<StaffPageVO> getStaffs();

	public String delete(int mbrSeq);

	public String save(StaffPageVO staffPageVo);

	public List<PkgAreaVO> getPkgs();


}
