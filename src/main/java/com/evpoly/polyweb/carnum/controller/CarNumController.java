package com.evpoly.polyweb.carnum.controller;

import java.io.BufferedInputStream;
import java.sql.Blob;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.evpoly.polyweb.carnum.model.Car;
import com.evpoly.polyweb.carnum.service.CarService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CarNumController {

	private CarService carService;
	
	@Autowired
	public CarNumController(CarService carService) {
		this.carService = carService;
	}
	
	@RequestMapping(value="history-carnum")
	public String goHistoryCarNum() {
		return "history-carnum";
	}
	
	// 차량 번호별 관리
	@RequestMapping(value = "history-carnum.do")
	@ResponseBody
	List<Car> carNumHistory(ModelMap model) {
		List<Car> carList = carService.getCarList();
		return carList;
	}
	
	// blob image
	private static byte[] blobToBytes(Blob blob) {
		BufferedInputStream is = null;
		byte[] bytes = null;
		try {
			is = new BufferedInputStream(blob.getBinaryStream());
            bytes = new byte[(int) blob.length()];
            int len = bytes.length;
            int offset = 0;
            int read = 0;

            while (offset < len
                    && (read = is.read(bytes, offset, len - offset)) >= 0) {
                offset += read;
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bytes;
	}
	
	// [byte를 base64로 인코딩 해주는 메소드]
    private static String byteToBase64(byte[] arr) {
        String result = "";
        try {
            result = Base64Utils.encodeToString(arr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
}
