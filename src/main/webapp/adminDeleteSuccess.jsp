<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function alertsuccess(){
                alert("The data has been successfully Deleted");
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deleted</title>
    </head>
    <body>
        <jsp:include page="adminManage.jsp"></jsp:include>
        <script type="text/javascript">
            window.onload=alertsuccess;
        </script>
    </body>
</html>
