<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="dbconnect.jsp" %>
<%@ page import="java.sql.*" %>


<%
    
    String userFeedback = request.getParameter("userfeedback");

    if (userFeedback != null && !userFeedback.trim().isEmpty()) {
        try {
            String query = "INSERT INTO feedbacktable (feedback_text) VALUES (?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, userFeedback);
            ps.executeUpdate();
            
        //    out.println("<p>Thank you for your feedback!</p>");
            response.sendRedirect("thankyou.jsp");

        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    } else {
        out.println("<p>Please enter valid feedback.</p>");
    }
%>


    