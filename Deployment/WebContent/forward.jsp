<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello

<% 
//The line below is used to forward to another JSP page
//request.getRequestDispatcher("index.jsp").forward(request, response);

//response.sendRedirect is used to redirect to another JSP page
response.sendRedirect("index.jsp");

%>

</html>