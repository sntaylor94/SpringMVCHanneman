<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Address List</title>
</head>
<body>
	<c:forEach items = "${all}" var = "item">
		<table>
			<tr>
				<td>Street Address</td>
				<td>${item.streetAddress}
			</tr>
			<tr>
				<td>City</td>
				<td>${item.city}
			</tr>
			<tr>
				<td>State</td>
				<td>${item.state}
			</tr>
			<tr>
				<td>Zip Code</td>
				<td>${item.zip}
			</tr>
			<tr>
				<td>Do Not Mail List</td>
				<td>${item.doNotMail}
			</tr>
		</table>
		<br />
		<hr style = "text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href = "form.mvc">Add new Address</a>
</body>
</html>