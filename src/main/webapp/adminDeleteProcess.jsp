<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %> 
<%
    String id = request.getParameter("id");
    try{
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
    statement = connection.createStatement();
    String DeleteQuery = "DELETE FROM staff_information WHERE id = " +id;
    statement.executeUpdate(DeleteQuery);
    
    response.sendRedirect("adminDeleteSuccess.jsp");
    }catch(Exception e){
    out.println(e);
    }
%>
