package com.controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class SignUp {

	@RequestMapping("/add")
	public ModelAndView doPost(HttpServletRequest request, HttpServletResponse response) 
	{
		
		UserDetails up = new UserDetails();
		
	
			up.setUsername(request.getParameter("username"));
			up.setPhonenumber(request.getParameter("phonenumber"));
			up.setEmail(request.getParameter("email"));
			up.setPassword(request.getParameter("password"));
			
			UserConnection uc = new UserConnection();
			Session session = uc.register();
			
			Transaction txt=session.beginTransaction();
	  		session.save(up);
			txt.commit();
		
		
		    ModelAndView model = new ModelAndView(); 
		    model.setViewName("loginform.jsp");
		 
		    
		 		
		 return model;
	}
	
	
	
}
