package com.evpoly.polyweb.carnum.repo;

public class CarSql {
	
	public static final String SELECT_CAR_LIST = """
		SELECT a.car_info_seq,  
				a.pkg_area_seq,  
				a.lin_seq,
				b.lin_seq_name,
				a.mbr_seq,  
				a.car_num,  
				a.car_ev,  
				a.car_detect,  
				a.car_get_tm,  
				a.car_set_tm, 
				a.car_img, 
				a.car_tm_out 
		FROM ev_car_info a
		LEFT JOIN ev_pkg_lin b
		ON a.lin_seq = b.lin_seq
		WHERE car_num != '' AND car_img != ''
	""";
	
}