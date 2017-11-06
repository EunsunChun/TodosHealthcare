package com.todos.healthcare.service;

import java.util.List;
import java.util.Map;

public interface HealthcareService {
	public List<Map<String,Object>> getList(Map<String,Object> param);
}