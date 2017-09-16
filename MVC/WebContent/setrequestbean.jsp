<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id= "user3" class = "beans.User" scope = "request"> </jsp:useBean>

<jsp:setProperty property="email" name="user3" value="hashemiyashar@gmail.com" />
<jsp:setProperty property="password" name="user3" value="dingdong" />

<jsp:forward page = "getrequestbean.jsp"></jsp:forward>


</body>
</html>
