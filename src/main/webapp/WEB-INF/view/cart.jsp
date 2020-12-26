<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Your Cart</title>
<style>

div.container
	{
	width:990px;
	margin:0 auto;
    background: #FFF;
    box-shadow: 0px 9px 13px 5px;
    }
              	h3.heading
  	{
  	font-size: 30px;
    font-family:sans-serif;
   
  	}
    		footer.separator
	{
		color:#FFFFFF;
    	font-size: 11px;
   	}
	footer
	{
    padding: 6px 40px 6px 40px;
    background:#6d6d6d;
    font-family: "lucida sans unicode";
    font-size: 13px;
    text-decoration:right;
	text-align:center;
	}
		header.menu
    {
        background: rgb(59, 118, 135);;
    	padding: 20px 0 20px 40px;
    }
    header.menu a
    {
    color:white;
    text-decoration: underline;
    font-size: 30px;
    font-family: cursive;
    }
        header.menu a:hover
	{
    color:coral;
	}
</style>
</head>
<body>
<div class="container">
<jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include>
<div align = center>
<%
if (request.getParameter("error") != null)
	out.print(request.getParameter("error") + "<br>");
%>

<br><br>Total Cart Value: ${cartValue }<br>

<table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td><b>Product</b></td>
 		<td><b>Qty</b></td>
 		<td><b>Rate</b></td>
 		<td><b>Price</b></td>
 		<td></td>
 	</tr>
 	<c:forEach items="${cartItems}" var="item">
 	  	<tr>
	 		<td>${item.name }</td>
 			<td>${item.rate }</td>
 			<td>${item.qty}</td>
 			<td>${item.price}</td>
 	  		<td>
 	  			<a href="cartdeleteitem?id=${item.productId}">Remove</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
</table> 		

<br>
 <c:if test = "${cartItems.size() > 0}">
	<a href="checkout">Checkout Now</a>
</c:if>
</div>
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</body>
</html>