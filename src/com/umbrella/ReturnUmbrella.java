//还伞业务，zzp revised
package com.umbrella;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet(name = "ReturnUmbrellaServlet", urlPatterns = { "/ReturnUmbrella" })
public class ReturnUmbrella extends HttpServlet {
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

		String PlaceNo;
		PlaceNo = request.getParameter("PlaceNo");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String returnTime = sdf.format(date);
		String orderNo;


		JSONObject jsonObject=new JSONObject();
		try {
			javax.naming.Context ctx = new javax.naming.InitialContext();
			javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
			java.sql.Connection conn = ds.getConnection();
			java.sql.Statement stmt=conn.createStatement();
			String  sql="select orderNo from Orders where memNo ='"+username+"'";
			java.sql.ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			orderNo = rs.getString("orderNo");
			
			sql ="insert into ReturnUM(orderNo,memNo,orderTime,placeNo,returnTime) select orderNo,memNo,orderTime,'"+PlaceNo+"','"+returnTime+"' from Orders where memNo ='"+username+"'" ;
			stmt.executeUpdate(sql);
			
			sql = "select * from ReturnUM where orderNo = '"+orderNo+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				sql="DELETE FROM Orders where orderNo='"+ orderNo + "'";
				stmt.executeUpdate(sql);
				sql = "select * from Orders where memNo = '"+username+"'";
				rs = stmt.executeQuery(sql);
				if(rs.next()){
					jsonObject.put("result", "error!");
				}
				else{
					jsonObject.put("result", "success!");
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