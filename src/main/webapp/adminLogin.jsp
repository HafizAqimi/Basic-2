<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Administrator</title>
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

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            margin: 0 auto;
        }

        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            padding: 8px;
            margin: 5px 0;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        button {
            padding: 8px;
            background-color: #337ab7;
            color: #fff;
            text-decoration: none;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
    <a href="index.jsp"><button>Back</button></a>
    <center>
        <h1>Administration Access</h1>
        <form action="adminManage.jsp" id="validate_d_admin" method="post" onsubmit="return admin_validation()">
            <table>
                <tr>
                    <td>Username </td>
                    <td>:</td>
                    <td><input type="text" required="" name="admin_username"></td>
                </tr>
                <tr>
                    <td>Password </td>
                    <td>:</td>
                    <td><input type="password" required="" name="admin_pw"></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><input type="submit" value="Log In"></td>
                </tr>
            </table>
        </form>
    </center>
    <script>
        function admin_validation() {
            let admin_uname = document.forms["validate_d_admin"]["admin_username"].value;
            let admin_passw = document.forms["validate_d_admin"]["admin_pw"].value;

            if (admin_uname === "admin") {
                if (admin_passw === "admin") {
                    alert("Access Granted.");
                    return true;
                } else {
                    alert("Access Denied. Incorrect password.");
                    return false;
                }
            } else {
                alert("Access Denied. Incorrect username.");
                return false;
            }
        }
    </script>
</body>
</html>
