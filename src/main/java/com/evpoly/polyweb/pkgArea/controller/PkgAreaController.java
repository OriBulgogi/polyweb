package com.evpoly.polyweb.pkgArea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.evpoly.polyweb.pkgArea.service.PkgAreaService;

@Controller
@RequestMapping("/pkg")
public class PkgAreaController {
	
	@Autowired
	private PkgAreaService pkgAreaService;
	
	
}
