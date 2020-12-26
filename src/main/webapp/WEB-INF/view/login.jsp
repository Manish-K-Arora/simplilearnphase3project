<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Login</title>
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

<div align = center>
${error}

<form name=frmLogin action="loginaction" method="post">


 <table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td width=25%>Email-ID*</td>
 		<td><input name=email_id maxlength=50></td>
 	</tr>
 	<tr>
 		<td width=25%>Password*</td>
 		<td><input name=pwd maxlength=10 type="password"></td>
 	</tr>
 	<tr>
 		<td colspan=2>
 			<button>Login</button><br>
 			<a href="signup">Not a member? Signup</a>
 		</td>
 	</tr>
 </table>
 </div>
</form>

<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</body>
</html>