<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id= "user2" class = "beans.User" scope = "page"> </jsp:useBean>

<jsp:setProperty property="email" name="user2" value="hashemiyashar@gmail.com" />
<jsp:setProperty property="password" name="user2" value="dingdong" />

Email: <%= user2.getEmail() %>


</body>
</html>