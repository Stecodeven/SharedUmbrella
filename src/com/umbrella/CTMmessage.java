package com.umbrella;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "CTMmessageServlet", urlPatterns = { "/CTMmessage" })
public class CTMmessage extends HttpServlet {
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
		String Message;
		Message = request.getParameter("Message");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String createdate = sdf.format(date);
		String messageNo = createdate + username;
		JSONObject jsonObject=new JSONObject();
		
		try {
			javax.naming.Context ctx = new javax.naming.InitialContext();
			javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
			java.sql.Connection conn = ds.getConnection();
			java.sql.Statement stmt=conn.createStatement();
			String sql;
			sql = "INSERT INTO Message(messageNo,memNo,releaseDate,messageContent) VALUES('"+messageNo+"','"+username+"','"+createdate+"','"+Message+"')";
			stmt.executeUpdate(sql);
			
			sql = "select* from Message where messageNo='"+messageNo+"'";
			java.sql.ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				jsonObject.put("result", "success!");
			}
			else{
				jsonObject.put("result", "error!");
			}
			conn.close();
		    } catch (Exception e) {   
		        	
		        e.printStackTrace();  
		    } 
		out.write(jsonObject.toJSONString());
		out.close();
		
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doGet(request, response); 
	}
}