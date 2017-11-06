package com.todos.healthcare.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("HealthcareService")
public class HealthcareServiceImpl implements HealthcareService {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.todos.healthcare.service.HealthcareService.";
	
	@Override
	public List<Map<String, Object>> getList(Map<String,Object> param) {
		
		return sqlSession.selectList(NAMESPACE+"getList", param);
	}

}
