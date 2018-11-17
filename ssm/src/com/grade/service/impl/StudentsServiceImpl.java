package com.grade.service.impl;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.grade.dao.StudentsMapper;
import com.grade.entity.Students;
import com.grade.service.StudentsService;

public class StudentsServiceImpl implements StudentsService {
    private StudentsMapper studentsMapper;
	public StudentsMapper getStudentsMapper() {
		return studentsMapper;
	}
	public void setStudentsMapper(StudentsMapper studentsMapper) {
		this.studentsMapper = studentsMapper;
	}
	@Override
	public List<Students> getAllStu() {
		
		return studentsMapper.getAllStu();
	}
	public static void main(String[] args) {
		 ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		 StudentsService studentsServcie=(StudentsService)ctx.getBean("studentsServcie");
		  System.out.println(studentsServcie.getAllStu().size());
	}

}
