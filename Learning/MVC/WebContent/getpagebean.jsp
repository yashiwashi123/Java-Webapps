<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Wont Work: bean has page scope -->
<jsp:useBean id= "user2" class = "beans.User" scope = "page"> </jsp:useBean>

Email: <%= user2.getEmail() %>
<p/>
Password: <%= user2.getPassword() %>

</body>
</html>