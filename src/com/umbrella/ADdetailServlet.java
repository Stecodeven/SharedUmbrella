package com.umbrella;
import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
@WebServlet(name = "ADdetailServlet", urlPatterns = { "/ADdetailServlet" })
public class ADdetailServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		try {
		    HttpSession session =request.getSession(true);
			String username = session.getAttribute("username").toString();
			String password = session.getAttribute("password").toString();
			javax.naming.Context ctx = new javax.naming.InitialContext();
            javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
            java.sql.Connection conn = ds.getConnection();               
            java.sql.Statement stmt=conn.createStatement();
            String sql = "select * from Employee where empNo='"+ username + "' and empPasswd='"+password + "'";
	    	java.sql.ResultSet rs = stmt.executeQuery(sql);
	    	
	    	if(rs.next())
	    	{
	    		String ADname = rs.getString("empName"); 
		        String ADsex = rs.getString("empSex");
		        String ADphone = rs.getString("empTel");
		        String ADusername = rs.getString("empNo");
		        String ADdepart = rs.getString("department");
		        String ADaddress = rs.getString("empAddress");
		        String ADemail = rs.getString("empEmail");
		        String ADtitle = rs.getString("title");
		        request.setAttribute("name",ADname);
		        request.setAttribute("sex",ADsex);
		        request.setAttribute("phone",ADphone);
		        request.setAttribute("username",ADusername);
		        request.setAttribute("department",ADdepart);
		        request.setAttribute("email",ADemail);
		        request.setAttribute("address",ADaddress);
		        request.setAttribute("title",ADtitle);
		        conn.close();
		        request.getRequestDispatcher( "ADdetail.jsp").forward(request,response);
		        //response.sendRedirect("ADdetail.jsp");
	    	}
	        else { 
	        	conn.close();
	        	response.sendRedirect("indexAdministrator.jsp");
	        	}
	        
	        
		} catch (Exception e) {   
        	
            e.printStackTrace();  
        }  
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doGet(request, response); 
	}
}