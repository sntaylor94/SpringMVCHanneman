<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Address List</title>
</head>
<body>
	<h2>Address Registration Result</h2>
	<table>
		<tr>
			<td>Street Address</td>
			<td>${a.streetAddress}</td>
		</tr>
		<tr>
			<td>City</td>
			<td>${a.city}</td>
		</tr>
		<tr>
			<td>State</td>
			<td>${a.state}</td>
		</tr>
		<tr>
			<td>Zip Code</td>
			<td>${a.zip}</td>
		</tr>
		<tr>
			<td>Do Not Mail List: </td>
			<td>${a.doNotMail}</td>
		</tr>
	</table>
	<a href = "viewAll.mvc">View All Addresses</a>
</body>
</html>