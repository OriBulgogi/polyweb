package com.evpoly.polyweb.carnum.repo;

import java.util.List;

import org.springframework.jdbc.core.namedparam.EmptySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.evpoly.polyweb.carnum.model.Car;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class CarRepository {

	private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	private final CarRowmapper carRowmapper;
	
	public CarRepository(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
		this.carRowmapper = new CarRowmapper();
	}
	
	// 차 리스트
	public List<Car> findList() {
		log.debug("findList query : {}", CarSql.SELECT_CAR_LIST);
		return namedParameterJdbcTemplate.query(CarSql.SELECT_CAR_LIST
												, EmptySqlParameterSource.INSTANCE
												, this.carRowmapper);
	}
	
}
