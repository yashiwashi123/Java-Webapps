<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="Hello World JSTL!"> </c:out> 

<jsp:useBean id ="test" class = "beans.TestBean" scope= "page"/> 


<p>Value of infor attribute: <c:out value="${test.info}" /> </p>


<%-- Get Parameters Here --%>
<p/>
Name parameter: <c:out value = "${param.name }" /> 

<%-- JSTL if statement --%>
<p/> 

<c:if test='${ param.name == "Yashar"}'>
Hello Yashar (shh this is a secret)
 </c:if>
 
 <c:if test='${ param.name != "Yashar"}'>
Hello Weirdo
 </c:if>
 
 <%-- JSTL choose --%>
 <p/>
 <c:choose>
 
 	<c:when test="${param.id==1 }">
 		<b>ID is equal to 1</b>
 	</c:when>
	<c:when test="${param.id==2 }">
 		<b>ID is equal to 2</b>
 	</c:when> 
 	<c:otherwise>
 		ID is neither one or two
 	</c:otherwise>
 </c:choose>
 
 <%-- JSTL foreach loop --%>
<c:forEach var="i" begin="0" end="10" step= "2" varStatus="status"> 

Loop counter is:<c:out value = "${i}"/> <br>

<c:if test = "${status.first }" > 
This was the first iteration
</c:if>

<c:if test = "${status.last }" > 
This was the last iteration
</c:if>

</c:forEach>
</body>
</html>