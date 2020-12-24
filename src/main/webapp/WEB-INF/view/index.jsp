<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes</title>
<style>

	div.container
	{
	width:990px;
	height:600px;
	margin:0 auto;
    background: #FFF;
    box-shadow: 0px 9px 13px 5px;
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
	}
</style> 
 </head>
<body>
<div class="container">

<jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include>

<div align = center>
<img src="http://placehold.it/200px100" alt="shoes">
<table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td><b>Product</b></td>
 		<td><b>Price</b></td>
 		<td><b>Category</b></td> 
 		<td></td>
 	</tr>
 	<c:forEach items="${list}" var="item">
 	  	<tr>
	 		<td>${item.name }</td>
 			<td>${item.price }</td>
 			<td>${mapCats.get(item.ID)}</td>
 	  		<td>
 	  			<a href="cartadditem?id=${item.ID}">Add To Cart</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
</table>
</div>
</div>
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>

</body>
</html>