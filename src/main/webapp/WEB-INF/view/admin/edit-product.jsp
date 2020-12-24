<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Add/Edit Product</title>
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

<%
if (request.getParameter("error") != null)
	out.print(request.getParameter("error"));
%>
<div align=center>
<form name=frmProduct method=post action="admineditproductaction">
	<input type=hidden name=id value="${product.ID }">
<table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td width=25%>Product name*</td>
 		<td><input name=name  maxlength=100 value="${product.name }"></td>
 	</tr>
 	<tr>
 		<td width=25%>Price*</td>
 		<td><input name=price type="numeric"  maxlength=6 value="${product.price }"></td>
 	</tr>
 	<tr>
 		<td width=25%>Category*</td>
 		<td>
 			<select name=category>
 				<option value="0">Select category</option>
 				${catDropdown}
 			</select>
 		</td>
 	</tr>
 	
 	<tr>
 		<td colspan=2>
 			<button>Save</button>
 		</td>
 	</tr>
 </table>
</form>
</div>
</div>
<jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include>
</body>
</html>