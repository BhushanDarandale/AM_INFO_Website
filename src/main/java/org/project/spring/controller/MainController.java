package org.project.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.project.spring.service.Service_Home;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@Autowired
	Service_Home service;

	@RequestMapping(value = "/", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getWelcome(Model model, final HttpServletRequest request) {
		return "home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getHome(Model model, final HttpServletRequest request) {
		return "home";
	}

}
