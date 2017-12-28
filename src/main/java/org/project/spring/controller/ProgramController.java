package org.project.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProgramController {
	
	@RequestMapping(value = "/programs", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getPrograms(Model model, final HttpServletRequest request) {
		return "programs";
	}
}
