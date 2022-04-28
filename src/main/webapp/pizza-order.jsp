<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>Make Your Pizza!</h1>
    <form action="/login.jsp" method="POST">

    <div class="form-group">
        <label for="crust">Choose Your Crust:</label>
        <select class="form-control" id="crust">
            <option>Thin</option>
            <option>Deep Dish</option>
            <option>Stuffed Crust</option>
            <option>Hand Tossed</option>
        </select>
    </div>
    <hr>

    <div class="form-group">
        <label for="sauce">Choose Your Sauce:</label>
        <select class="form-control" id="sauce">
            <option>Marinara Sauce</option>
            <option>Creamy Alfredo Sauce</option>
            <option>Spicy Red Sauce</option>
            <option>Pesto Sauce</option>
        </select>
    </div>
    <hr>

    <div class="form-group">
        <label for="size">Choose Your Size:</label>
        <select class="form-control" id="size">
            <option>Small</option>
            <option>Medium</option>
            <option>Large</option>
            <option>X-Large</option>
        </select>
    </div>
    <hr>

        <div class="checkbox">
            <label>Choose Your Toppings</label><br>
            <label><input type="checkbox" value="">Pepperoni</label>
        </div>
        <div class="checkbox">
            <label><input type="checkbox" value="">Cheese</label>
        </div>
        <div class="checkbox disabled">
            <label><input type="checkbox" value="">Meat</label>
        </div>
        <hr>
        <div class="form-group">
            <label for="address">Delivery Address</label>
            <input id="address" name="address" class="form-control" type="text">
        </div>
        <hr>

        <input type="submit" class="btn btn-primary btn-block" value="Submit Order">
    </form>

    <h2>Your Order:</h2>
    <p>Crust: ${crust}</p>
    <p>Sauce:</p>
    <p>Size:</p>
    <p>Toppings:</p>
    <c:forEach var="topping" items="${toppings}">
        <p>${topping}</p>
    </c:forEach>
    <p>Delivery Address: ${randomStuff}</p>
</div>
</body>
</html>
