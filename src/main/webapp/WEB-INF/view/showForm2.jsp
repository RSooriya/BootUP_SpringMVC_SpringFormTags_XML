<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Student form - values from java</h2>
<form:form action="processForm2" method="get" modelAttribute="student">
<table>
<tr>
<td>Name</td>
<td><form:input path="name"/></td>
</tr>
<tr>
<td>Country</td>
<td>
<form:select path="country">
<form:options items="${student.countryOptions }"/>
</form:select>
</td>
</tr>
<tr>
<td>Gender</td>
<td><form:radiobuttons path="gender" items="${student.genderOptions }"/></td>
</tr>
<tr>
<td>Languages known</td>
<td><form:checkboxes path="languages" items="${student.languageOptions }"/></td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form:form>
</body>
</html>