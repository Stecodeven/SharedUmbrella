package com.umbrella;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "ServicePointSupplyServlet", urlPatterns = { "/ServicePointSupply" })
public class ServicePointSupply extends HttpServlet {
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
		
		String Number;
		Number = request.getParameter("Number");
		
		String StoreNo;
		StoreNo = request.getParameter("StoreNo");
		
		String PlaceNo;
		PlaceNo = request.getParameter("PlaceNo");
		
		String CompNo;
		CompNo = request.getParameter("CompNo");
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String createdate = sdf.format(date);
		
		String deliverNo = createdate +PlaceNo;
		JSONObject jsonObject=new JSONObject();
	
		try {
			javax.naming.Context ctx = new javax.naming.InitialContext();
            javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
            java.sql.Connection conn = ds.getConnection();               
            java.sql.Statement stmt=conn.createStatement();
        	String sql;
			sql = "INSERT INTO Delivery(deliverNo,deliverQuan,empNo,compNo,placeNo,storeNo) VALUES('"+deliverNo+"','"+Number+"','"+username+"','"+CompNo+"','"+PlaceNo+"','"+StoreNo+"')";
			stmt.executeUpdate(sql);
			sql = "select* from Delivery where deliverNo='"+deliverNo+"'";
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