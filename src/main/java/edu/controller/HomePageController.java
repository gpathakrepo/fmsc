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
	public String homePage(ModelMap map) 
	{
		return "homePage";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute(value="userBean")User userBean, ModelMap map,HttpServletRequest request,HttpServletResponse response) 
	{
		User user = userService.login(userBean);
		if(user != null){
			HttpSession session = request.getSession(true);
			session.setAttribute(userBean.getUserName(), user);
			return "userProfile";
		}
		
		return "homePage";
	}
}
