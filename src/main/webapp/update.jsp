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

<h1 style= "background-color: "white"; color: navy"; align="center">UPDATE PRODUCT DATA</h1>

<form:form action="update" modelAttribute="pro" >
<table style="background-color: silver;  font-size: 21px ; height: 400px; width: 400px;" align="center" cellpadding="10px">



<tr >
  <td>ID :</td>
   <td><form:input path="id" readonly="true"/></td>
  </tr>
  
  
  <tr >
  <td>NAME :</td>
   <td><form:input path="name"/></td>
  </tr>
  
  <tr >
  <td> BRAND :</td>
   <td><form:input path="brand"/> </td>
  </tr>
  
  <tr >
  <td>PRICE :</td>
   <td><form:input path="price"/> </td>
  </tr>
  
  <tr >
  <td>QUANTITY :</td>
   <td><form:input path="quantity"/></td>
  </tr>
  
  <tr >
  <td> <form:button>save</form:button></td>
   
  </tr>
    

  </table>
</form:form>
</body>
</html>