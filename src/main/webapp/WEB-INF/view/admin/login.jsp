<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<style>
div.container
	{
	width:780px;
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
<jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include>

${error}<br>

<form name=frmLogin action="adminloginaction" method="post">
<div align=center>
 <table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td width=35%>Admin-ID*</td>
 		<td><input name=admin_id maxlength=20></td>
 	</tr>
 	<tr>
 		<td width=35%>Admin Password*</td>
 		<td><input name=admin_pwd maxlength=10 type="password"></td>
 	</tr>
 	<tr>
 		<td colspan=2>
 			<button>Login</button>
 		</td>
 	</tr>
 </table>
 </div>
</form>

<jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include>
</div>
</body>
</html>