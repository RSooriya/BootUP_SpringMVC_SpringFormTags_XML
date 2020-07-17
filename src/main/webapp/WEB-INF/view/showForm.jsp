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
<h2>Student form - hardcoded</h2>
<form:form action="processForm" modelAttribute="student" method="get">
<table>
<tr>
<td>FirstName</td>
<td><form:input path="firstName"/></td>
</tr>
<tr>
<td>LastName</td>
<td><form:input path="lastName"/></td>
</tr>
<tr>
<td>Country</td>
<td>
<form:select path="country">
<form:option value="India" label="India"/>
<form:option value="USA" label="USA"/>
<form:option value="China" label="China"/>
<form:option value="UK" label="UK"/>
</form:select>
</td>
</tr>
<tr>
<td>Gender</td>
<td>
<form:radiobutton path="gender" value="Male" label="Male"/>
<form:radiobutton path="gender" value="Female" label="Female"/>
</td>
</tr>
<tr>
<td>Languages known</td>
<td>
<form:checkbox path="languages" value="JAVA" label="Java"/>
<form:checkbox path="languages" value="C" label="C"/>
<form:checkbox path="languages" value="Python" label="Python"/>
</td>
</tr>
<tr>
<td><input type="submit" value="Submit"/>
</tr>
</table>
</form:form>
</body>
</html>