<%-- 
    Document   : PersonalProcess
    Created on : 29 Nov 2023, 12:12:31 am
    Author     : Win11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal detail form process</title>
    </head>
    <body>
        <h1>this is process file for personal detail form</h1>
        <%
        String name = request.getParameter("name");
        String ICnum = request.getParameter("ICnum");
        String email = request.getParameter("email");
        String PhoneNum = request.getParameter("PhoneNum");
        String marital = request.getParameter("marital");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
                
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeeprofiling?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");

            String query = "INSERT INTO personaldetail (name, ICnum, email, PhoneNum, marital, gender, address) VALUES (?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, name);
            pstmt.setString(2, ICnum);
            pstmt.setString(3, email);
            pstmt.setString(4, PhoneNum);
            pstmt.setString(5, marital);
            pstmt.setString(6, gender);
            pstmt.setString(7, address);
            
            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<h2>Data inserted successfully!</h2>");
            } else {
                out.println("<h2>Failed to insert data.</h2>");
            }
        } catch (Exception e) {
            out.println("<h2>Exception occurred: " + e.getMessage() + "</h2>");
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
    </body>
</html>
