<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: joselopez
  Date: 4/26/22
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Foods> foods = new ArrayList<>(Arrays.asList(
            new Foods(1, "Hammer", "A great tool", 3000),
            new Foods(2, "Rake", "A useful tool", 2300),
            new Foods(3, "Screwdriver", "Another useful tool", 1000),
            new Foods(4, "Drill", "A power tool", 9500)
    ));

    request.setAttribute("products", foods);
    request.setAttribute("myName", "Javier");
%>


<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
