<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: teal;">

<h1 style= "background-color: "white"; color: navy"; align="center">ENTER PRODUCT DETAILS</h1>


<form:form action="save" modelAttribute="product" >
<table style="background-color: silver;  font-size: 21px ; height: 400px; width: 400px;" align="center" >

  <tr align="center">
  <td>NAME :</td>
   <td><form:input path="name"/></td>
  </tr>
  
  <tr align="center">
  <td> BRAND :</td>
   <td><form:input path="brand"/> </td>
  </tr>
  
  <tr align="center">
  <td>PRICE :</td>
   <td><form:input path="price"/> </td>
  </tr>
  
  <tr align="center">
  <td>QUANTITY :</td>
   <td><form:input path="quantity"/></td>
  </tr>
  
  <tr align="center">
  <td> <form:button>save</form:button></td>
   
  </tr>
    

  </table>
</form:form>

</body>
</html>