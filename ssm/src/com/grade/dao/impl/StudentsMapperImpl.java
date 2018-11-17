package com.grade.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.grade.dao.StudentsMapper;
import com.grade.entity.Students;

public class StudentsMapperImpl implements StudentsMapper {
	private SqlSessionTemplate sqlSessionTemplate;
public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}


	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}


/**
 * 查询学生
 */
	@Override
	public List<Students> getAllStu() {
		 //获取sqlSessionFactory
		
		return this.sqlSessionTemplate.selectList("com.grade.dao.StudentsMapper.getAllStu");
	}

	
	@Override
	public int deleteByPrimaryKey(Integer xh) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Students record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Students record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Students selectByPrimaryKey(Integer xh) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Students record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Students record) {
		// TODO Auto-generated method stub
		return 0;
	}
   public static void main(String[] args) {
	   ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
	   StudentsMapper studentsMapper=(StudentsMapperImpl)ctx.getBean("studentsMapper");
	  System.out.println(studentsMapper.getAllStu().size());
   }
}
