package com.umbrella;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
@WebServlet(name = "OrderSearchServlet", urlPatterns = { "/OrderSearch" })
public class OrderSearch extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session =request.getSession(true);
		String username = session.getAttribute("username").toString();
		
		JSONArray jsonArray=new JSONArray();
		try {
			javax.naming.Context ctx = new javax.naming.InitialContext();
			javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
			java.sql.Connection conn = ds.getConnection();
			java.sql.Statement stmt=conn.createStatement();
			String sql = "select orderNo,orderTime,placeNo,memNo,memName from Orders where memNo='"+ username + "'";
			java.sql.ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				JSONObject jsonObject=new JSONObject();
				jsonObject.put("orderNo", rs.getString(1));
				jsonObject.put("orderTime", rs.getString(2));
				jsonObject.put("placeNo", rs.getString(3));
				jsonArray.add(jsonObject);
			}
			else{
				JSONObject jsonObject=new JSONObject();
				jsonObject.put("orderNo", "NULL");
				jsonObject.put("orderTime", "NULL");
				jsonObject.put("placeNo", "NULL");
				jsonArray.add(jsonObject);
				
			}
			conn.close();
		    } catch (Exception e) {   
		        	
		        e.printStackTrace();  
		    } 
		out.write(jsonArray.toJSONString());
		out.close();
		
		
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doGet(request, response); 
	}
}