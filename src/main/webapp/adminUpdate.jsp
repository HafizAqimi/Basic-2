<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<%
    try{
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String id = request.getParameter("id");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/labexercise3","root","");
        statement = connection.createStatement();
        String UpdateQuery = "SELECT * FROM staff_information WHERE id=" +id;
        resultSet = statement.executeQuery(UpdateQuery);
        while(resultSet.next()){
        %>
        <!DOCTYPE html>
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Update Data</title>
            </head>
            <body>
            <a href="adminManage.jsp"><button>Back</button></a>
            <center>
                <h1>Updating Staff Vehicle Applications</h1>
                <form action="adminUpdateProcess.jsp" method="post">
                    <input type="hidden" name="id" value="<%=resultSet.getString("id")%>">
                    <h2>Staff Detail</h2>
                    <table>
                        <tr>
                            <td>Staff Full Name </td>
                            <td>:</td>
                            <td><%=resultSet.getString("fullname")%></td>
                        </tr>
                        <tr>
                            <td>Staff Identification No. </td>
                            <td>:</td>
                            <td><%=resultSet.getString("ic_no")%></td>
                        </tr>
                        <tr>
                            <td>Staff Registration No. </td>
                            <td>:</td>
                            <td><%=resultSet.getString("reg_no")%></td>
                        </tr>
                        <tr>
                            <td>Staff Phone No. </td>
                            <td>:</td>
                            <td><%=resultSet.getString("phone_no")%></td>
                        </tr>
                    </table>
                    <br>
                    <h2>Department Vehicle Details</h2>
                    <table>
                        <tr>
                            <td>Available Vehicle </td>
                            <td>:</td>
                            <td><%=resultSet.getString("available_veh")%></td>
                        </tr>
                        <tr>
                            <td>No. of Passengers </td>
                            <td>:</td>
                            <td><%=resultSet.getString("no_of_passenger")%></td>
                        </tr>
                        <tr>
                            <td>Destination Address </td>
                            <td>:</td>
                            <td><%=resultSet.getString("destination_address")%></td>
                        </tr>
                        <tr>
                            <td>Purpose of Use </td>
                            <td>:</td>
                            <td><%=resultSet.getString("purpose_use")%></td>
                        </tr>
                        <tr>
                            <td>Status</td>                            
                            <td>:</td>
                            <td><select name="status">
                                    <option value="Accept">Accept</option>
                                    <option value="Decline">Decline</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center"><input type="submit" value="Update"></td>
                        </tr>
                    </table>
                </form>
            </center>
            </body>
        </html>
        
        <%
        }
    }catch(Exception e){
        out.println(e);
    }
%>
