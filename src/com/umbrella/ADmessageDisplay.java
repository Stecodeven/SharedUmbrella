package com.umbrella;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "ADmessageDisplayServlet", urlPatterns = { "/ADmessageDisplay" })
public class ADmessageDisplay extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();

		JSONArray jsonArray=new JSONArray();
		try {
			javax.naming.Context ctx = new javax.naming.InitialContext();
			javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
			java.sql.Connection conn = ds.getConnection();
			java.sql.Statement stmt=conn.createStatement();
			String sql;
			sql = "select messageNo,memNo,releaseDate,messageContent from Message order by releaseDate desc";
			java.sql.ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				JSONObject jsonObject=new JSONObject();
				jsonObject.put("messageNo", rs.getString(1));
				jsonObject.put("memNo", rs.getString(2));
				jsonObject.put("date", rs.getString(3));
				jsonObject.put("content", rs.getString(4));
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