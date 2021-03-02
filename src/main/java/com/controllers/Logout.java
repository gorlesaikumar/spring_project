package com.controllers;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Logout {
	
	@RequestMapping("/logout")
	public ModelAndView doPost(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		UserConnection uc = new UserConnection();
		Session session = uc.register();
		
		
		
    	ModelAndView model = new ModelAndView(); 
		
		
    	try { 
    		
    	    HttpSession httpSession= request.getSession(true);  
            
    	    httpSession.invalidate();
    	    
    	    model.setViewName("Homepage.jsp");  
    	    
    	   }
    	   catch(Exception e)
    	   {
    		  System.out.println(e);
    	   }
		return model;
				
	}
}
