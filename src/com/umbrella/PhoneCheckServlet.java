package com.umbrella;
import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

@WebServlet(name = "PhoneCheckServlet", urlPatterns = { "/SelPhone" })
public class PhoneCheckServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String phone;
		phone = request.getParameter("phone");
		JSONArray jsonArray=new JSONArray();
		try {
			javax.naming.Context ctx = new javax.naming.InitialContext();
			javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
			java.sql.Connection conn = ds.getConnection();
			java.sql.Statement stmt=conn.createStatement();
			String sql = "select memName,memSex,memTel from Member where memTel='"+ phone + "'";
			java.sql.ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				JSONObject jsonObject=new JSONObject();
				jsonObject.put("name", rs.getString(1));
				jsonObject.put("sex", rs.getString(2));
				jsonObject.put("phone", rs.getString(3));
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