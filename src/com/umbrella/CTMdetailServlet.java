package com.umbrella;
import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
@WebServlet(name = "CTMdetailServlet", urlPatterns = { "/CTMdetailServlet" })
public class CTMdetailServlet extends HttpServlet {
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
            String sql = "select * from Member where memNo='"+ username + "' and memPasswd='"+password + "'";
	    	java.sql.ResultSet rs = stmt.executeQuery(sql);
	    	if(rs.next())
	    	{
				String CTMname = rs.getString("memName"); 
		        String CTMsex = rs.getString("memSex");
		        String CTMphone = rs.getString("memTel");
//		        String CTMbirth = rs.getString("memBirth");
		        String CTMemail = rs.getString("memEmail");
		        String CTMaddress = rs.getString("memAddress");
		        String CTMzipcode = rs.getString("memZipCode");
		        String CTMoverduetimes = rs.getString("overdueTimes");
		        String CTMusername = rs.getString("memNo");
				
		        request.setAttribute("name",CTMname);
		        request.setAttribute("sex",CTMsex);
		        request.setAttribute("phone",CTMphone);
		        request.setAttribute("username",CTMusername);
//		        request.setAttribute("birth",CTMbirth);
		        request.setAttribute("email",CTMemail);
		        request.setAttribute("address",CTMaddress);
		        request.setAttribute("zipcode",CTMzipcode);
		        request.setAttribute("overduetimes",CTMoverduetimes);
		        conn.close();
		        request.getRequestDispatcher( "CTMdetail.jsp").forward(request,response);
	    	}
	        else {
	        	conn.close();
	        	response.sendRedirect("indexCustomer.jsp");
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