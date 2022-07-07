package com.evpoly.polyweb.staffPage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.evpoly.polyweb.staffPage.service.StaffPageService;
import com.evpoly.polyweb.staffPage.vo.PkgAreaVO;
import com.evpoly.polyweb.staffPage.vo.StaffPageVO;

import groovyjarjarpicocli.CommandLine.Model;

@Controller
@RequestMapping("/staff")
public class StaffPageController {
	
	@Autowired
	private StaffPageService staffPageService;
	
	@RequestMapping("staffDel.do")
	public RedirectView deleteStaff(Model model,
			@RequestParam(value="seq") int mbrSeq) {
		System.out.println("-----staffDel.do-----");
		
		String answer = staffPageService.delete(mbrSeq);
		System.out.println(answer);
		
		return new RedirectView("/staff");
	}
	
	@RequestMapping("staffsave.do")
	public RedirectView saveStaff(Model model, HttpServletRequest request, PkgAreaVO pkgAreaVo, StaffPageVO staffPageVo) {
		System.out.println("----staffsave.do----: "+ staffPageVo);
		staffPageVo.setPkgAreaSeq(Integer.parseInt(request.getParameter("pkgSelect")));
		String answer = staffPageService.save(staffPageVo);
		System.out.println(answer);

		return new RedirectView("/staff");
	}
	

}
