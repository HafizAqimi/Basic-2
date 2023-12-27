<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            height: 100vh;
        }

        h1 {
            color: #333;
        }

        table {
            margin-top: 20px;
        }

        td {
            padding: 10px;
        }

        a {
            text-decoration: none;
            color: #337ab7;
            transition: color 0.3s;
        }

        a:hover {
            color: #23527c;
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
    <a href="index.jsp"><button>Back</button></a>
    <center>
        <h1>Staff Vehicle Management</h1>
        <table>
            <tr>
                <td><label><a href="staffRegForm.jsp">Register Department Vehicle</a></label></td>
                <td> | </td>
                <td><label><a href="staffStatus.jsp">View Application Status</a></label></td>
            </tr>
        </table>
    </center>
</body>
</html>
