<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.util.Date,java.io.*,java.util.Enumeration"%>
<%
	Date today = new java.util.Date();

	String text = "Today's date is: " + today.toString();

%>

<%=
	
	text
	
%>

</body>
</html>