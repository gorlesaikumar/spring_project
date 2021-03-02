package com.controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


public class RemoveCart {

	
	public ModelAndView removeCart(HttpServletRequest request , HttpServletResponse response) throws IOException, SQLException
	{   
		
		UserConnection uc = new UserConnection();
		Session session = uc.register();
		
		HttpSession httpSession = request.getSession();
		
    	ModelAndView model = new ModelAndView(); 
		
		
		
						
			CartData cd = new CartData();
			
			
			String str =(String) httpSession.getAttribute("valid");
			
			org.hibernate.query.Query<Products> query = session.createQuery("from CartData where password = '"+str+"'");
						
			List<Products> list=query.list();
			
			 model.addObject("Productlist", list);
			
			session.clear();
			
			model.setViewName("Cartpage.jsp");
			
						
	
		return model;

		
		
	}
}
