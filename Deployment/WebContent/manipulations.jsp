<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<% for(int i = 0; i<5; i++ ){ %>

<p>This HTML is in a scriptlet loop: Iteration <%= i %> </p>

<% } %>

<%
String id = request.getParameter("id");

if (id == null) { 

%>

<strong>ID parameter missing!</strong>

<% } else { %>

ID parameter is <%= id %>

<%} %>

</body>
</html>