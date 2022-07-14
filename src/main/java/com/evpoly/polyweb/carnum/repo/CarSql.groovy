package com.evpoly.polyweb.carnum.repo;

public class CarSql {
	
	public static final String SELECT_CAR_LIST = """
		SELECT *
		FROM ev_car_info
		WHERE car_num != '' AND car_img != ''
	""";
	
}