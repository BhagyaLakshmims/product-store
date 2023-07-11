<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: teal;">

<h1 align="center" style="background-color: white; color:navy" >PRODUCTS TABLE</h1>

<table align="center" style="background-color: silver;" border="3px" cellpadding="10px" cellspacing="1px">
<tr style="color: navy;" align="center">
<th >PRODUCTS_ID</th>
<th>PRODUCTS_NAME</th>
<th>PRODUCTS_BRAND</th>
<th>PRODUCTS_PRICE</th>
<th>PRODUCTS_QUANTITY</th>
<th>DELETE</th>
<th>UPDATE</th>
</tr>

<c:forEach var="p" items="${data}">

<tr align="center">
<td>${p.getId()}</td>
<td>${p.getName()}</td>
<td>${p.getBrand()}</td>
<td>${p.getPrice()}</td>
<td>${p.getQuantity()}</td>
<td><a href="delete?id=${p.getId()}">delete</a></td>
<td><a href="edit?id=${p.getId()}">update</a></td>

</tr>



</c:forEach>

</table>

</body>
</html>