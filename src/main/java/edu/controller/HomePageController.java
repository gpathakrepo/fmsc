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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import edu.literals.StringLiterals;
import edu.model.Donation;
import edu.model.User;
import edu.service.HomePageService;
import edu.service.UserService;

@Controller
public class HomePageController {
	@Autowired
	UserService userService;

	@Autowired
	HomePageService homePageService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(HttpServletRequest request, ModelMap map) 
	{
		// fmscHomePage test
		ModelAndView modelAndView = new ModelAndView("Home");
		

		return "redirect:/homeDirect";
	}
	

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute(value = "userBean") User userBean, ModelMap map, HttpServletRequest request,
			HttpServletResponse response) {
		User user = userService.login(userBean);
		if (user != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("user", user);
			return "Home";
		}

		return "login";
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
			Return= "redirect:/loginDirect";
		}		
		else {
			 
			Return= "Payment";
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
	@RequestMapping(value = "/homeDirect", method = RequestMethod.GET)
	public ModelAndView homeDirect(@ModelAttribute(value = "signUpBean") User userBean) {
		ModelAndView modelAndView = new ModelAndView("Home");
		
		modelAndView.addObject("jString", homePageService.getAllDonationsString());
		modelAndView.addObject("totalNoOfMeals", homePageService.getTotalNumberOfMeals());
		return modelAndView;
	}
	
	@RequestMapping(value = "/makePayment", method = RequestMethod.POST)
	public ModelAndView makePayment(@ModelAttribute(value="donationBean")Donation donation, HttpServletRequest request) 
	{
		ModelAndView modelAndView = new ModelAndView("Donate");
 		HttpSession session = request.getSession(false);
		session.setAttribute(StringLiterals.DONATION_LITERAL, donation);
		modelAndView.addObject("donationBean", donation);
		return modelAndView;
	}
	@RequestMapping(value = "/cancelDonation", method = RequestMethod.GET)
	public String cancelPayment(HttpServletRequest request) 
	{
		
		HttpSession session = request.getSession(false);
		session.setAttribute(StringLiterals.DONATION_LITERAL, null);
		
		return "Payment";
	}
	@RequestMapping(value = "/successfulDonation", method = RequestMethod.GET)
	public String sucessfulPayment(HttpServletRequest request) 
	{
		
		HttpSession session = request.getSession(false);
		Donation donation = (Donation) session.getAttribute(StringLiterals.DONATION_LITERAL);
		User user = (User) session.getAttribute(StringLiterals.USER_LITERAL);
		homePageService.saveDonation(donation, user);
		return "redirect:/homeDirect";
	}
	@RequestMapping(value = "/txnNotify", method = RequestMethod.POST)
	public String txnNotify(HttpServletRequest request) 
	{
		
		HttpSession session = request.getSession(false);
		Donation donation = (Donation) session.getAttribute(StringLiterals.DONATION_LITERAL);
		User user = (User) session.getAttribute(StringLiterals.USER_LITERAL);
		homePageService.saveDonation(donation, user);
		return "Home";
	}
	@RequestMapping(value = "/txnNotify", method = RequestMethod.GET)
	public String txnNotifyGet(HttpServletRequest request) 
	{
		
		HttpSession session = request.getSession(false);
		Donation donation = (Donation) session.getAttribute(StringLiterals.DONATION_LITERAL);
		User user = (User) session.getAttribute(StringLiterals.USER_LITERAL);
		homePageService.saveDonation(donation, user);
		return "Home";
	}
	@RequestMapping(value = "/checkProfanity", method = RequestMethod.GET)
	@ResponseBody
	public String checkProfanity(@RequestParam(value="revealName") String revealName) 
	{
		
		return homePageService.checkRevealNameForProfanity(revealName);
	}
}
