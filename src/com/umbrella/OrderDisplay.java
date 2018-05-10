package com.umbrella;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "OrderDisplayServlet", urlPatterns = { "/OrderDisplay" })
public class OrderDisplay extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setContentType("application/json;charset=UTF-8");
		HttpSession session =request.getSession(true);
		String username = session.getAttribute("username").toString();
		try {
			javax.naming.Context ctx = new javax.naming.InitialContext();
			javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
			java.sql.Connection conn = ds.getConnection();
			java.sql.Statement stmt=conn.createStatement();
			String sql;
			sql = "select orderNo,orderTime,placeNo from Orders where memNo = '"+username+"'";
			
			java.sql.ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()){
				String orderNo = rs.getString("orderNo"); 
		        String orderTime = rs.getString("orderTime");
		        String placeNo = rs.getString("placeNo");
		        request.setAttribute("orderNo",orderNo);
		        request.setAttribute("orderTime",orderTime);
		        request.setAttribute("placeNo",placeNo);
		        conn.close();
		        request.getRequestDispatcher( "OrderForm.jsp").forward(request,response);
			}
			else { 
				request.setAttribute("orderNo","NULL");
		        request.setAttribute("orderTime","NULL");
		        request.setAttribute("placeNo","NULL");
		        conn.close();
		        request.getRequestDispatcher( "OrderForm.jsp").forward(request,response);
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