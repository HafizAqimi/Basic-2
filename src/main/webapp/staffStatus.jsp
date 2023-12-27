<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Staff</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        center {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
        }

        h1 {
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            max-width: 800px;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #4caf50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        button {
            padding: 8px;
            background-color: #337ab7;
            color: #fff;
            text-decoration: none;
            border: none;
            cursor: pointer;
            margin-top: 10px;
        }

        button:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
    <a href="staffManage.jsp"><button>Back</button></a>
    <center>
        <h1>Staff Application Status</h1>
        <table border="1">
            <tr>
                <th>Staff Full Name</th>
                <th>Staff IC No.</th>
                <th>Staff Registration No.</th>
                <th>Staff Phone No.</th>
                <th>Available Vehicle</th>
                <th>No. of Passengers</th>
                <th>Destination Address</th>
                <th>Purpose of Use</th>
                <th>Status</th>
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
