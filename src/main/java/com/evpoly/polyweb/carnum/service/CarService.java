package com.evpoly.polyweb.carnum.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.evpoly.polyweb.carnum.model.Car;
import com.evpoly.polyweb.carnum.repo.CarRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CarService {

	private final CarRepository carRepository;
	
	public CarService(CarRepository carRepository) {
		this.carRepository = carRepository;
	}
	
	// 차 목록
	public List<Car> getCarList() {
		return this.carRepository.findList();
	}
	
}
