package org.project.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.project.spring.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QuizController {

	@Autowired
	QuizService service;

	@RequestMapping(value = "/quiz", method = RequestMethod.GET, headers = "Accept=application/json")
	public String geteQuizs(Model model, final HttpServletRequest request) {
		return "home";
	}

}
