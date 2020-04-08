package com.umbrella;
import java.sql.*;  
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(name = "login", urlPatterns = { "/login" })
public class login extends HttpServlet {
	private static final long serialVersionUID = 54L;
    private static final String TITLE = "�û���Ϣ";

    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
      
        String username,password,user;
        HttpSession session =request.getSession(true);
    	username = request.getParameter("username");
    	password = request.getParameter("password");
    	user = request.getParameter("user");
    	session.setAttribute("username",username);
		session.setAttribute("password",password);
      
        try {
        	javax.naming.Context ctx = new javax.naming.InitialContext();
            javax.sql.DataSource ds = (javax.sql.DataSource)ctx.lookup("java:comp/env/jdbc/umbrella");
            java.sql.Connection conn = ds.getConnection();               
            java.sql.Statement stmt=conn.createStatement();
            if(user.equals("customer")){
            	String sql = "select * from Member where memNo='"+ username + "' and memPasswd='"+password + "'";
            	java.sql.ResultSet rs = stmt.executeQuery(sql);
            	if(rs.next()){
            		conn.close();
            		response.sendRedirect("indexCustomer.jsp");
            		}
            	else {
            		conn.close();
            		response.sendRedirect("login.jsp");
            	}
            }
            else if(user.equals("admin")){
            	String sql = "select * from Employee where empNo='"+ username + "' and empPasswd='"+password + "'";
            	java.sql.ResultSet rs = stmt.executeQuery(sql);
            	if(rs.next()){
            		conn.close();
            		response.sendRedirect("indexAdministrator.jsp");
            	}
            	else { 
            		conn.close();
            		response.sendRedirect("login.jsp");
            	}
            }
         
        /*if(rs.next())
        	response.sendRedirect("indexAdministrator.jsp");
        else { 
        	response.sendRedirect("login.jsp");
        	}*/
        } catch (Exception e) {   
            e.printStackTrace();  
        }  
        
    }

}