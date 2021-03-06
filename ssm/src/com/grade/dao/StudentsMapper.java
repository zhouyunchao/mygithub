package com.grade.dao;

import java.util.List;

import com.grade.entity.Students;

public interface StudentsMapper {
 
	/**
	 * 查询所有学生
	 */
	public List<Students> getAllStu();
	/**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table students
     *
     * @mbggenerated Sun Aug 19 10:54:38 CST 2018
     */
    int deleteByPrimaryKey(Integer xh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table students
     *
     * @mbggenerated Sun Aug 19 10:54:38 CST 2018
     */
    int insert(Students record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table students
     *
     * @mbggenerated Sun Aug 19 10:54:38 CST 2018
     */
    int insertSelective(Students record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table students
     *
     * @mbggenerated Sun Aug 19 10:54:38 CST 2018
     */
    Students selectByPrimaryKey(Integer xh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table students
     *
     * @mbggenerated Sun Aug 19 10:54:38 CST 2018
     */
    int updateByPrimaryKeySelective(Students record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table students
     *
     * @mbggenerated Sun Aug 19 10:54:38 CST 2018
     */
    int updateByPrimaryKey(Students record);
}