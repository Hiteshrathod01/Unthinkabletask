<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String url = "jdbc:mysql://localhost:3306/unthinkabletaskdb";
    String user = "root";
    String passw = "root";
    Connection conn = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url,user,passw);
    } catch (Exception e) {
        out.println("Database Connection Failed: " + e.getMessage());
      //  e.printStackTrace(); // actual used for logs injava no need to show to user / client
        
    }
%>