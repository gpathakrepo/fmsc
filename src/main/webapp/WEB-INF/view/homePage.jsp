<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>FMSC Home Page</title>
</head>
<body>
	<form:form method="post" action="login" commandName="userBean">
			<table style="margin-top: 200Px;margin-left: 150px">
	        	<tr style="padding: 5px 5px 5px 5px;">
	        		<td id="big_bold">User Name</td>
	        		<td align="right"><input type="text" maxlength="25" name="userName"/></td>
	        	</tr>
	        	<tr style="padding: 5px 5px 5px 5px;">
	        		<td id="big_bold">Password</td>
	        		<td align="right"><input type="text" maxlength="25" name="password"/></td>
	        	</tr>
	        	<tr><td colspan="2"><input type="submit" value="Submit"/></td></tr>
	        </table>
	</form:form>
</body>
</html>