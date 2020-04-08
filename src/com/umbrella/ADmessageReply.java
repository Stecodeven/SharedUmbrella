package com.umbrella;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "ADmessageReplyServlet", urlPatterns = { "/ADmessageReply" })
public class ADmessageReply extends HttpServlet {
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
		String empNo = session.getAttribute("username").toString();
		String ReplyMessage;
		ReplyMessage = request.getParameter("ReplyMessage");
		String messageNo;
		messageNo = request.getParameter("messageNo");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String replyDate = sdf.format(date);
		String replyNo = replyDate + empNo;
		String memNo;
		JSONObject jsonObject=new JSONObject();
		
		try {
			javax.naming.Context ctx = new javax.naming.InitialContext();
			javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
			java.sql.Connection conn = ds.getConnection();
			java.sql.Statement stmt=conn.createStatement();
			String sql;
			sql = "select memNo from Message where messageNo='"+messageNo+"'";
			java.sql.ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				memNo = rs.getString(1);
				sql = "INSERT INTO MessageReply(replyNo,replyDate,replyContent,messageNo,empNo,memNo) VALUES('"+replyNo+"','"+replyDate+"','"+ReplyMessage+"','"+messageNo+"','"+empNo+"','"+memNo+"')";
				stmt.executeUpdate(sql);
			
				sql = "select* from MessageReply where replyNo='"+replyNo+"'";
				rs = stmt.executeQuery(sql);
				if(rs.next()){
					jsonObject.put("result", "success!");
				}
				else{
					jsonObject.put("result", "error!");
				}
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