<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Change Password</title>
<style>
div.container
	{
	width:990px;
	height:600px;
	margin:0 auto;
    background: #FFF;
    box-shadow: 0px 9px 13px 5px;
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
    font-size: 17px;
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
<jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/admin-topbar.jsp" ></jsp:include>

<div align = center>
${error }

<form name=frmPwd method=post action="adminchangepwdaction">
<table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td width=25%>Enter new password*</td>
 		<td><input name=pwd maxlength=10 type="password"></td>
 	</tr>
 	<tr>
 		<td width=25%>Confirm new Password*</td>
 		<td><input name=pwd2 maxlength=10 type="password"></td>
 	</tr>
 	<tr>
 		<td colspan=2>
 			<button>Login</button>
 		</td>
 	</tr>
 </table>
</form>
</div>
</div>
<jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include>
</body>
</html>