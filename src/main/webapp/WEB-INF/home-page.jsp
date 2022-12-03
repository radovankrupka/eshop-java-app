
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Forum page</title>
</head>
<body>

<h3 class="d-flex justify-content-center align-items-center" >${user.meno} ${user.priezvisko}</h3>

<form action="cart" class="d-flex justify-content-center align-items-center" >
    <input type="hidden" name="operacia" value="logout">
    <input type="submit" value="CHECK CART" class="btn btn-primary btn-lg btn-block">
</form>

<form action="ShowOrders" class="d-flex justify-content-center align-items-center" >
    <input type="submit" value="MY ORDERS" class="btn btn-secondary btn-warning btn-lg btn-block">
</form>

<form action="home" class="d-flex justify-content-center align-items-center" >
    <input type="hidden" name="operacia" value="logout">
    <input type="submit" value="LOGOUT" class="btn btn-primary btn-sm btn-danger btn-block">
</form>



<table id = "data" class="table table-primary table-hover table-bordered mx-auto w-75">
    <tr>
        <th>Article name</th>
        <th>Art. image</th>
        <th>Price per pc</th>
        <th>In stock</th>
        <th></th>

    </tr>


    <c:forEach items="${articleList}" var="article">
        <tr>
            <td >${article.nazov}</td>
            <td><img src="${pageContext.request.contextPath}/images/${article.id}.png" height="150"/></td>
            <td >${article.cena} EUR </td>
            <td >${article.ks}</td>
            <td>
                    <form action="AddItem">
                        <input type="hidden" name="itemToAddId" value="${article.id}">
                        <input type="number" name="numOfItems" max = "${article.ks}" min="1" value="1">
                        <input type="submit" value="Add to cart" class="btn btn-success btn-sm">
                    </form>
            </td>

        </tr>
    </c:forEach>


</table>




</body>
</html>
