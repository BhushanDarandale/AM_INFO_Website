package org.project.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.project.spring.service.MyService;
import org.project.spring.utility.MetaTagCreator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/home", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getHome(Model model, final HttpServletRequest request) {
		

		return "home";
	}

	/*@RequestMapping(value = "/home/*", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getHome2(Model model, final HttpServletRequest request) {

		List<Article> listArticles = service.findArticles(10, 0, 1, "POPULAR");
		model.addAttribute("Topics", listArticles);

		Metatag metaTag = MetaTagCreator.createHomePageMeta(request);
		model.addAttribute("MetaTag", metaTag);

		return "home";
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET, headers = "Accept=application/json")
	public String dashboard(Model model, final HttpServletRequest request) {

		User user = SessionMgmt.getCurrentUser(request);

		if (user != null) {
			int role = user.getRole();
			if (role == MyConstatnts.USER_ROLE_ADMIN) {

				List<Article> articles = service.findArticles(0, 0, -1, "RECENT");
				model.addAttribute("Topics", articles);

				Metatag metaTag = MetaTagCreator.createDashboardPageMeta(request, user, articles.size());
				model.addAttribute("MetaTag", metaTag);

				return "dashboard";

			} else if (role == MyConstatnts.USER_ROLE_EDITOR) {

				int userid = user.getId();
				List<Article> listArticles = service.findArticles(0, userid, -1, "RECENT");
				model.addAttribute("Topics", listArticles);
				return "dashboard";

			} else if (role == MyConstatnts.USER_ROLE_CUSTOMER) {
				return "redirect:/home";
			} else {
				return "redirect:/home";
			}
		}
		return "redirect:/home";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET, headers = "Accept=application/json")
	public String profile(Model model, final HttpServletRequest request) {
		List<Article> listArticles = service.findArticles(10, 0, 1, "POPULAR");
		model.addAttribute("Topics", listArticles);

		// Metatag metaTag = MetaTagCreator.createDashboardPageMeta(request,
		// user, listArticles.size());
		// model.addAttribute("MetaTag", metaTag);

		return "home";
	}*/

}
