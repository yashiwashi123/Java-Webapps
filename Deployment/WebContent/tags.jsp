<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
This page is to learn about tags
<p> </p>

<!-- Directive Tag -->
<%@ page import = "java.util.*" %>

<!--  Expression Tag -->
<%= "Hello from an expression tag: " + new Date() %>

<!-- Declaration Tag -->
<%! public String info = "Some info here"; %>

<!-- Scriptlet Tag -->

<% for(int i = 0; i < 5; i++) { %>
This is looped 5 times through a scriptlet tag

<%} %>
</body>
</html>