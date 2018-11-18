package com.grade.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grade.entity.Students;
import com.grade.service.StudentsService;

@Controller
public class StudentsController {
	@Autowired//   WPS搜索我的ffff
	private StudentsService tudentsService;
    

	@RequestMapping("/getAllStu.do")
	public String getAllStu(Model model)throws Exception{
    	List<Students> list=tudentsService.getAllStu();
    	model.addAttribute("list", list);
		return "getAllStu.jsp";
	}
}
