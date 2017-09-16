<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- static include: content changes infrequently -->
<%@include file = "copyright.txt" %>

<p/>

<!--  dynamic include: content changes often -->
<jsp:include page = "updates.txt"/>

<!-- must use static include for files with Java code that we want to access-->

<%@ include file = "variable.jsp"%>

<%= name %>

<!-- must use include jsp tag if you don't know what file you want until runtime -->
<p/>
<% String id = request.getParameter("id"); %>

<% if (id == null) { %>
<jsp:include page = "idnotfound.html"/>	

<%} else { %>	

<jsp:include page = "idfound.html"/>

<% } %>

</body>
</html>