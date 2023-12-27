<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrator</title>
    </head>
    <style>
        .buttonupdate {
        background-color: #00FF27;
        border: none;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 2px 2px;
        cursor: pointer;
        }
        .buttondelete {
            background-color: #F92C00;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 2px 2px;
            cursor: pointer;
        }
    </style>
    <body>
        <a href="index.jsp"><button>Back</button></a>
    <center>
    <h1>Administrator Management Platform</h1>
        <table border="1">
            <tr>
                <td>Staff Full Name</td>
                <td>Staff IC No.</td>
                <td>Staff Registration No.</td>
                <td>Staff Phone No.</td>
                <td>Available Vehicle</td>
                <td>No. of Passengers</td>
                <td>Destination Address</td>
                <td>Purpose of Use</td>
                <td>Status</td>
                <td>Action</td>
            </tr>
            <%
            try{
                Connection connection = null;
                Statement statement = null;
                ResultSet resultSet = null;
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
                statement = connection.createStatement();
                String DisplayQuery = "SELECT * FROM staff_information";
                resultSet = statement.executeQuery(DisplayQuery);
                while(resultSet.next()){
                //display data by looping method
                %>
                <tr>
                    <td><%=resultSet.getString("fullname")%></td>
                    <td><%=resultSet.getString("ic_no")%></td>
                    <td><%=resultSet.getString("reg_no")%></td>
                    <td><%=resultSet.getString("phone_no")%></td>
                    <td><%=resultSet.getString("available_veh")%></td>
                    <td><%=resultSet.getString("no_of_passenger")%></td>
                    <td><%=resultSet.getString("destination_address")%></td>    
                    <td><%=resultSet.getString("purpose_use")%></td>    
                    <td><%=resultSet.getString("status")%></td>    
                    <td><a href="adminUpdate.jsp?id=<%=resultSet.getString("id")%>"><button class="buttonupdate" onclick="return confirm('Proceed to Update the data?')">Update</button></a>
                        <a href="adminDeleteProcess.jsp?id=<%=resultSet.getString("id")%>"><button class="buttondelete" onclick="return confirm('Proceed to Delete the data?')">Delete</button></a></td>  
                </tr>
                <%
                }
            }catch(Exception e){
                //display alert error
                out.println(e);
            }
            %>
        </table>
    </center>
    </body>
</html>
