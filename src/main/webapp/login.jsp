<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("profile.jsp");
        }
    }
%>

<html>
<head>
    <title>Login Form</title>
</head>
<body>
    <h1>Login Form</h1>
<hr>
    <form method="POST">
        <label for="username">Username</label>
            <input id="username" type="username" name="username">
    <hr>
        <label for="password">Password</label>
            <input id="password" type="password" name="password">
    <hr>
        <button>Login</button>
    </form>
</body>
</html>
