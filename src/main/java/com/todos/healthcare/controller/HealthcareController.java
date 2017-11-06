package com.todos.healthcare.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.todos.healthcare.service.HealthcareService;

@Controller
public class HealthcareController {

	@Autowired
	private HealthcareService healthcareService;
	
	@RequestMapping(value = "/health", method = RequestMethod.GET)
	public String getList(HttpServletRequest request, HttpServletResponse response,Model model) {
		Map<String, Object> param = new HashMap<String, Object>();
		List<Map<String, Object>> getList = healthcareService.getList(param);
		System.out.println(getList);
		model.addAttribute("members",getList);
		return "members";
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model){
		return "login";
	}
}

