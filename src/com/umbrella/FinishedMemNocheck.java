package com.umbrella;
import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

@WebServlet(name = "FinishedMemNocheck", urlPatterns = { "/FinishedMemNocheck" })
public class FinishedMemNocheck extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String memNo;
		memNo = request.getParameter("memNo");
		JSONArray jsonArray=new JSONArray();
		try {
			javax.naming.Context ctx = new javax.naming.InitialContext();
			javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
			java.sql.Connection conn = ds.getConnection();
			java.sql.Statement stmt=conn.createStatement();
			String sql = "select orderNo,memNo,orderTime,returnTime,placeNo from ReturnUM where memNo='"+ memNo + "'";
			java.sql.ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				JSONObject jsonObject=new JSONObject();
				jsonObject.put("orderNo", rs.getString(1));
				jsonObject.put("memNo", rs.getString(2));
				jsonObject.put("orderTime", rs.getString(3));
				jsonObject.put("returnTime", rs.getString(4));
				jsonObject.put("placeNo", rs.getString(5));
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