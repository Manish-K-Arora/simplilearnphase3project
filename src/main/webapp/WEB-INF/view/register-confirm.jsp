<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Registration Confirmation</title>
<style>
div.container
	{
	width:990px;
	margin:0 auto;
    background: #FFF;
    box-shadow: 0px 9px 13px 5px;
	}
P
  	{
  	font-size: 30px;
    font-family:sans-serif;   
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
<div class = "container">
<jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include>
<div align=center>
<P>Your registration is confirmed.</P> <a href="login">Login to continue shopping</a><br>
</div>
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</body>
</html>