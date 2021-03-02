package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.protocol.Resultset;
@Controller
public class Login {
	@RequestMapping("/add2")
	public ModelAndView doPost(HttpServletRequest request, HttpServletResponse response) 
	{
		
		
		
		String uname = request.getParameter("username");
		String upass = request.getParameter("password");
		
		HttpSession sessHttpSession = request.getSession();
		
		ModelAndView model = new ModelAndView();
		UserConnection uc = new UserConnection();
		Session session = uc.register();
		
		Transaction txt=session.beginTransaction();
 
		
		
		UserDetails ud = session.get(UserDetails.class, uname);
		
		
		
		if(upass.equals(ud.getPassword()))
		{
			 
		    model.setViewName("Homepage1.jsp");
		    
		    sessHttpSession.setAttribute("valid", upass);
		    
		}
		else
		{   
		    
			model.addObject( "message", "invalid credintials");
			model.setViewName("loginform.jsp");
			
		}
		txt.commit();
		return model;
				
		
	 
	
	}
}
