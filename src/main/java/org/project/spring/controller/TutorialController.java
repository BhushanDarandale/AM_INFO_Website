package org.project.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TutorialController {

	@RequestMapping(value = "/tutorial", method = RequestMethod.GET, headers = "Accept=application/json")
	public String geteQuizs(Model model, final HttpServletRequest request) {
		return "tutorial";
	}
}
