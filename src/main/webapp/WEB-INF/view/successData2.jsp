<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<td>Name</td>
<td>${student.name }</td>
</tr>
<tr>
<td>Country</td>
<td>${student.country }</td>
</tr>
<tr>
<td>Gender</td>
<td>${student.gender }</td>
</tr>
<tr>
<td>Languages known</td>
<td>
<c:forEach items="${student.languages }" var="temp">
${temp }<br>
</c:forEach>
</td>
</tr>
</table>
</body>
</html>