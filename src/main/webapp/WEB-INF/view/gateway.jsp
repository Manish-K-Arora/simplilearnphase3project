<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Make Payment</title>
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
<div class = "container">
<jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include>

<div align = center>

<br><br>
Your card will be charged an amount of ${cartValue}<br><br>

<a href="completepurchase">Click to complete checkout</a>
</div>
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</body>
</html>