package org.project.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.project.spring.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@Autowired
	HomeService service;

	@RequestMapping(value = "/", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getWelcome(Model model, final HttpServletRequest request) {
		return "home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getHome(Model model, final HttpServletRequest request) {
<<<<<<< HEAD
		System.out.println(request.getParameter("id"));//My Id : 2960177694
=======
		System.out.println(request.getParameter("id"));
>>>>>>> a32513f4747d2f4d15fb9d6ab4e1dabd06a725c0
		return "home";
	}
}
