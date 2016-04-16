package edu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.model.User;
import edu.service.UserService;
import edu.service.impl.UserServiceImpl;

@Controller
public class HomePageController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(ModelMap map) {
		return "Home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute(value = "userBean") User userBean, ModelMap map, HttpServletRequest request,
			HttpServletResponse response) {
		User user = userService.login(userBean);
		if (user != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("user", user);
			return "userProfile";
		}

		return "homePage";
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute(value = "signUpBean") User userBean) {
		boolean registered = userService.registerUser(userBean);
		if (registered) {

			return "login";
		}

		return "Signup";
	}

	@RequestMapping(value = "/donate", method = RequestMethod.GET)
	public String donate( HttpServletRequest request) {
        String Return = null;
		HttpSession session = request.getSession(false);
		if (session == (null) || session.getAttribute("user")==null) {
			Object userB = session.getAttribute("user");
			if (userB== null)
				Return= "redirect:/loginDirect";
			else 
				Return= "Donate";
		} 
		return Return;
	}

	@RequestMapping(value = "/singUp", method = RequestMethod.GET)
	public String singUp(@ModelAttribute(value = "signUpBean") User userBean) {

		return "register";
	}

	@RequestMapping(value = "/loginDirect", method = RequestMethod.GET)
	public String loginDirect(@ModelAttribute(value = "signUpBean") User userBean) {

		return "login";
	}
}
