package com.controllers;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class Description {
    @RequestMapping("/PDP")
	public ModelAndView vegitables(HttpServletRequest request , HttpServletResponse response) throws IOException, SQLException
	{   
    	
    	UserConnection uc = new UserConnection();
    	
		Session session = uc.register();
		
		Transaction txt=session.beginTransaction();
 
		txt.commit();
		
				
		String str= request.getParameter("item");
		
		org.hibernate.query.Query<Products> query = session.createQuery("from Products where name = '"+str+"'");
		
		
		List<Products>list1= query.list();
		 
		  
		  ModelAndView model = new ModelAndView(); 
		
		  
		  model.addObject("prod", list1);
		  model.setViewName("PDP.jsp");
		
				
		return model;
		
	}
}
