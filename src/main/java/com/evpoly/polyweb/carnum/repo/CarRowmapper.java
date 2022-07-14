package com.evpoly.polyweb.carnum.repo;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.evpoly.polyweb.carnum.model.Car;

public class CarRowmapper implements RowMapper<Car> {

	@Override
	public Car mapRow(ResultSet rs, int rowNum) throws SQLException {
		Car car = new Car();
		car.setCarInfoSeq(rs.getInt("car_info_seq"));
		car.setPkgAreaSeq(rs.getInt("pkg_area_seq"));
		car.setLinSeq(rs.getInt("lin_seq"));
		car.setLinSeqName(rs.getString("lin_seq_name"));
		car.setMbrSeq(rs.getInt("mbr_seq"));
		car.setCarNum(rs.getString("car_num"));
		car.setCarEv(rs.getString("car_ev"));
		car.setCarDetect(rs.getString("car_detect"));
		car.setCarGetTm(rs.getString("car_get_tm"));
		car.setCarSetTm(rs.getString("car_set_tm"));
		car.setCarImg(rs.getBytes("car_img"));
		car.setCarTmOut(rs.getString("car_tm_out"));
		return car;
	}

}
