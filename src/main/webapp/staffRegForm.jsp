<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Staff Department Vehicle Registration</title>
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

        h1, h2 {
            color: #333;
        }

        table {
            margin-top: 20px;
            border-collapse: collapse;
            width: 80%;
            max-width: 600px;
        }

        td {
            padding: 10px;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
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
        <h1>Department Vehicle Registration</h1>
        <form action="staffRegProcess.jsp" method="post">
            <h2>Staff Detail</h2>
            <table>
                <tr>
                    <td>Staff Full Name </td>
                    <td>:</td>
                    <td><input type="text" name="staffFullname"></td>
                </tr>
                <tr>
                    <td>Staff Identification No. </td>
                    <td>:</td>
                    <td><input type="text" name="staffIcNo"></td>
                </tr>
                <tr>
                    <td>Staff Registration No. </td>
                    <td>:</td>
                    <td><input type="text" name="staffRegNo"></td>
                </tr>
                <tr>
                    <td>Staff Phone No. </td>
                    <td>:</td>
                    <td><input type="text" name="staffPhoneNo"></td>
                </tr>
            </table>
            <br>
            <h2>Department Vehicle Details</h2>
            <table>
                <tr>
                    <td>Available Vehicle </td>
                    <td>:</td>
                    <td><select name="staffAvailVeh">
                            <option value="">--- Select a Vehicle ---</option>
                            <option value="Car">Car</option>
                            <option value="Van">Van</option>
                            <option value="Bus">Bus</option>
                            <option value="Motorcycle">Motorcycle</option>
                        </select></td>
                </tr>
                <tr>
                    <td>No. of Passengers </td>
                    <td>:</td>
                    <td><input type="text" name="staffNoOfPassengers"></td>
                </tr>
                <tr>
                    <td>Destination Address </td>
                    <td>:</td>
                    <td><input type="text" name="staffDestinationAddress"></td>
                </tr>
                <tr>
                    <td>Purpose of Use </td>
                    <td>:</td>
                    <td><input type="text" name="staffPurposeOfUse"></td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <input type="submit" value="Register">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
