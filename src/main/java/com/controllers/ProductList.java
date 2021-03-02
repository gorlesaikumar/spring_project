package com.controllers;


import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.persistence.Temporal;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import org.springframework.stereotype.Controller;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.util.Base64Decoder;



@Controller
public class ProductList {
	
    @RequestMapping("/listing")   
    
	public ModelAndView vegitables(HttpServletRequest request , HttpServletResponse response) throws IOException, SQLException
	{   
    	
    	UserConnection uc = new UserConnection();
    	ModelAndView model = new ModelAndView(); 
		Session session = uc.register();
		
		Transaction txt=session.beginTransaction();
 
		txt.commit();
		
				
		String str= request.getParameter("market");
		
		
		org.hibernate.query.Query<Products> query = session.createQuery("from Products where category = '"+str+"'");
		
		
		  List<Products>list = query.list();
		  
			
			  List<Products>plist=new ArrayList();
			  
			  
			  for (int i = 0; i < list.size(); i++) {
			  
			  Blob blob= list.get(i).getImage();
			  
			  
			  InputStream inputStream = blob.getBinaryStream();
			  
			  ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
			  byte[] buffer = new byte[4096]; 
			      //4096bytes = 4kb
			  
			  int bytesRead = -1;
			  
			  while ((bytesRead = inputStream.read(buffer)) != -1) 
			  { 
				  //bytesRead=4kb
			  outputStream.write(buffer, 0, bytesRead);
			  }
			  
			  byte[] imageBytes = outputStream.toByteArray();
			  
			  String base64Image = Base64.getEncoder().encodeToString(imageBytes); Products
			  ps = new Products(); ps.setBase64(base64Image);
			  ps.setId(list.get(i).getId());
			  ps.setName(list.get(i).getName());
			  ps.setPrice(list.get(i).getPrice());
			  ps.setQuantity(list.get(i).getQuantity());
			  
			  plist.add(ps);
			  
			  }
			  
			  model.addObject("Productlist", plist);
			 
		  
		
		  
		  model.addObject("Productlist", list);
		  model.setViewName("PLP.jsp");
		
				
		return model;
		
	}
    
   
			  
			  
	     
	 
	}

