package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	
	@RequestMapping(value= {"/login"}, method =RequestMethod.POST) 
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (username != "" && password != "") {
			if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) 
			{
				String message = "Welcome " + username;
				return new ModelAndView("../jsp/confirmation", "message", message);
			} else {
				return new ModelAndView("../jsp/login", "error", "Username or password is invalid");
			}
		} else {
		return new ModelAndView("../jsp/login", "error", "Please enter username and password");
	}
	}
}
		
		
	