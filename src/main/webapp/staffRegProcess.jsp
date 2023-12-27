<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*"%>

<%
    String staffFullname = request.getParameter("staffFullname");
    String staffIcNo = request.getParameter("staffIcNo");
    String staffRegNo = request.getParameter("staffRegNo");
    String staffPhoneNo = request.getParameter("staffPhoneNo");
    String staffAvailVeh = request.getParameter("staffAvailVeh");
    String staffNoOfPassengers = request.getParameter("staffNoOfPassengers");
    String staffDestinationAddress = request.getParameter("staffDestinationAddress");
    String staffPurposeOfUse = request.getParameter("staffPurposeOfUse");
    
    String InsertQuery = "INSERT INTO staff_information(fullname,ic_no,reg_no,phone_no,"
            + "available_veh,no_of_passenger,destination_address,purpose_use)"
            + "VALUES('"+staffFullname+"','"+staffIcNo+"','"+staffRegNo+"','"+staffPhoneNo+"',"
            + "'"+staffAvailVeh+"','"+staffNoOfPassengers+"','"+staffDestinationAddress+"','"+staffPurposeOfUse+"')";
    
    try{
    Connection connection = null;
    Statement statement = null;
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
    statement = connection.createStatement();
    statement.executeUpdate(InsertQuery);
    
    response.sendRedirect("staffRegSuccess.jsp");
    }catch(Exception e){
    out.println(e);
    }
%>
