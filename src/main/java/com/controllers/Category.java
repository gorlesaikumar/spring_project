package com.controllers;

import java.io.IOException;
import java.sql.SQLException;

import java.util.List;

import javax.persistence.Temporal;

import org.hibernate.Session;
import org.hibernate.Transaction;

import org.springframework.web.servlet.ModelAndView;

public class Category {

	    
	    public static List retrivecategory() throws IOException, SQLException
		{   
	    	
	    	UserConnection uc = new UserConnection();
	    	ModelAndView model = new ModelAndView(); 
			Session session = uc.register();
			
			Transaction txt=session.beginTransaction(); 
	 
			txt.commit();
			
			
			org.hibernate.query.Query<Products> query = session.createQuery("from Products where parent_id = parent_id ");
			
			
			
			   
			List<Products>list = query.list();
			  
				
			
				  
			return list;
			
			

         }
			/*
			 * public static List retriveproduct() throws IOException, SQLException {
			 * 
			 * UserConnection uc = new UserConnection(); ModelAndView model = new
			 * ModelAndView(); Session session = uc.register();
			 * 
			 * Transaction txt=session.beginTransaction();
			 * 
			 * txt.commit();
			 * 
			 * 
			 * org.hibernate.query.Query<Products> query =
			 * session.createQuery("from Products where child_id = child_id");
			 * 
			 * List<Products>list = query.list();
			 * 
			 * 
			 * 
			 * 
			 * return list;
			 * 
			 * 
			 * 
			 * }
			 */
	    
}