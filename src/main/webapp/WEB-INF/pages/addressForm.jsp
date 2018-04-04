<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Address List</title>
</head>
<body>
<h2>Address Registration Form</h2>
<mvc:form modelAttribute = "address" action = "result.mvc">
	<table>
		<tr>
			<td><mvc:label path = "streetAddress">Street Address</mvc:label></td>
			<td><mvc:input path = "streetAddress" /></td>
		</tr>
		<tr>
			<td><mvc:label path = "city">City</mvc:label></td>
			<td><mvc:input path = "city" /></td>
		</tr>
		<tr>
			<td><mvc:label path = "state">State</mvc:label></td>
			<td><mvc:select path = "state" items = "${states}"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "zip">Zip Code</mvc:label></td>
			<td><mvc:input path = "zip" /></td>
		</tr>
		<tr>
			<td><mvc:label path = "doNotMail">Do Not Mail List</mvc:label></td>
			<td><mvc:checkbox path = "doNotMail" /></td>
		</tr>
		<tr>
			<td colspan = "2">
				<input type = "submit" value = "Submit" />
			</td>
		</tr>
	</table>
</mvc:form>
<a href = "viewAll.mvc">View all Addresses</a>
</body>
</html>