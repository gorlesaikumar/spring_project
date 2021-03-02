package com.controllers;

import java.io.IOException;
import java.sql.SQLException;
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
public class CartPage {
@RequestMapping("/cartpage")
	public ModelAndView cartsession(HttpServletRequest request , HttpServletResponse response) throws IOException, SQLException
	{   
		
		UserConnection uc = new UserConnection();
		Session session = uc.register();
		
		HttpSession httpSession = request.getSession();
		
    	ModelAndView model = new ModelAndView(); 
		
		
		if(httpSession.getAttribute("valid")!=null)
		{
						
			CartData cd = new CartData();
			
			String str =(String) httpSession.getAttribute("valid");
			
			org.hibernate.query.Query<Products> query = session.createQuery("from CartData where password = '"+str+"'");
						
			List<Products>list=query.list();
			
			model.addObject("Productlist", list);
			
			model.setViewName("Cartpage.jsp");
			
						
		}
		else {
			model.setViewName("loginform.jsp");
		}
		return model;

		
		
	}

@RequestMapping("/remove")
public ModelAndView cartRemove(HttpServletRequest request , HttpServletResponse response,HttpSession hsession) throws IOException, SQLException

{   
	UserConnection uc = new UserConnection();
	
	
	Session session = uc.register();
	Transaction txt=session.beginTransaction();
	 
	
	
	ModelAndView model = new ModelAndView(); 
	CartData cd = new CartData();
	
	String str= request.getParameter("items");
	
	org.hibernate.query.Query<Products> query = session.createSQLQuery("Delete from cartdata where name='"+str+"'");	
	
	int n=query.executeUpdate();
	txt.commit();
	System.out.println(n);
	hsession.removeAttribute("name");
	
	cartsession(request, response);
	
	
	
	 model.setViewName("Cartpage.jsp"); 			
	
	return model;
   }
}