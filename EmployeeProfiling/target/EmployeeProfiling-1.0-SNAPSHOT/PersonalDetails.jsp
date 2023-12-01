<%-- 
    Document   : EmployeeDetails
    Created on : 28 Nov 2023, 11:01:50 pm
    Author     : Win11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Details</title>
        <link rel="stylesheet" href="Stylesheet.css">
    </head>
    <body>
        <h1>Employee Details</h1><br>
        <div class="formcontainer">
            <form action="PersonalProcess.jsp" method="post">
                <table>
                    <tr>
                        <td><label for="name">Name: </label></td>
                        <td><input type="text" id="name" name="name"></td>
                        <td><label for="ICnum">IC Number: </label></td>
                        <td><input type="text" id="ICnum" name="ICnum"></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email: </label></td>
                        <td><input type="email" id="email" name="email"></td>
                    </tr>
                    <tr>
                        <td><label for="PhoneNum">Phone Number: </label></td>
                        <td><input type="text" id="PhoneNum" name="PhoneNum"></td>
                        <td><label for="marital">Marital Status: </label></td>
                        <td>
                            <select id="marital" name="marital">
                                <option value="single">Single</option>
                                <option value="married">Married</option>
                            </select>
                        </td>
                        <td><label for="gender">Gender: </label></td>
                        <td>
                            <select id="gender" name="gender">
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                                <option value="other">Other</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <label for="address">Address: </label><br>
                <textarea id="address" name="address" rows="4" cols="50" class="resize"></textarea><br>
                <input type="submit" value="submit">
            </form>
        </div>
    </body>
</html>
