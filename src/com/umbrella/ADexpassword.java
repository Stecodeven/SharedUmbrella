package com.umbrella;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


import com.alibaba.fastjson.JSONObject;


@WebServlet(name = "ADexpasswordServlet", urlPatterns = { "/ADexpasswordServlet" })
public class ADexpassword extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		
		 try {
			    
			    
				String password1 = request.getParameter("password1").toString();
				String password2 = request.getParameter("password2").toString();
				HttpSession session =request.getSession(true);
				String password = session.getAttribute("password").toString();
				String username = session.getAttribute("username").toString();
				JSONObject jsonObject=new JSONObject();
				if(password1.equals(password)){
					javax.naming.Context ctx = new javax.naming.InitialContext();
		            javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
		            java.sql.Connection conn = ds.getConnection();               
		            java.sql.Statement stmt=conn.createStatement();
		            String sql = "update Employee set empPasswd='"+password2+"' where empNo='"+username+"'";
			    	stmt.executeUpdate(sql);
			    	conn.close();
			    	session.setAttribute("password",password2);
			    	response.setContentType("application/json; charset=utf-8");
					 PrintWriter out = response.getWriter();
					 jsonObject.put("result", "success!");
					 out.write(jsonObject.toJSONString());
					 out.close();
				}
				else{
					 
					 response.setContentType("application/json; charset=utf-8");
					 PrintWriter out = response.getWriter();
					 jsonObject.put("result", "error!"); 
					 out.write(jsonObject.toJSONString());
					 out.close();
				}
		        } catch (Exception e) {   
		        	
		            e.printStackTrace();  
		        }  
		
		
	}
	
}