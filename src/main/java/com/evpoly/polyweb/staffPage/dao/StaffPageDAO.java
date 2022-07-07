package com.evpoly.polyweb.staffPage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.evpoly.polyweb.staffPage.vo.StaffPageVO;
import com.evpoly.polyweb.staffPage.vo.PkgAreaVO;

@Mapper
public interface StaffPageDAO {
	public List<StaffPageVO> getStaffs();

	public String delete(int mbrSeq);

	public void save(StaffPageVO staffPageVo);

	public List<PkgAreaVO> getPkgs();

}
