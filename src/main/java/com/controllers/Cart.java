package com.controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Cart {
     
	@RequestMapping("/cart")
	public ModelAndView cartsession(HttpServletRequest request , HttpServletResponse response) throws IOException, SQLException
	{   
		
		UserConnection uc = new UserConnection();
		Session session = uc.register();
		
		HttpSession httpSession = request.getSession();
		
    	ModelAndView model = new ModelAndView(); 
		
		
		if(httpSession.getAttribute("valid")!=null)
		{
						
			CartData cd = new CartData();
			
			String str= request.getParameter("items");
						
			org.hibernate.query.Query<Products> query = session.createQuery("from Products where id = '"+str+"'");
						
			List<Products> cart=query.list();
												
			  
			 			  
			  cd.setId(cart.get(0).getId());
			  cd.setName(cart.get(0).getName());
			  cd.setPrice(cart.get(0).getPrice());
			  cd.setPassword((String) httpSession.getAttribute("valid"));
			   
			 
			  Transaction txt=session.beginTransaction();
			   session.save(cd);
				txt.commit();
				
			
				
			model.setViewName("Homepage.jsp");
			
					
		}
		else {
			model.setViewName("loginform.jsp");
		}
		return model;
	 
		
		// cart addition
		
		
		
		
		
		
		
		
}
	
	
}

