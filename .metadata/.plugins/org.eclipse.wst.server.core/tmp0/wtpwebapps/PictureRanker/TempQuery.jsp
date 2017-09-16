
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:import url="home.jsp"> 

<c:param name="title" value="WaifuRanker Home"></c:param>
</c:import>
<sql:setDataSource var ="ds" dataSource="jdbc/webshop" />
<!-- selects the "webshop" schema from mysql and sets it to the "ds" variable  -->

<sql:query dataSource="${ds}" sql="select * from images limit 3" var = "results" />
<!-- query's through the "images" table and selects all --> 

<table class="images"> 

<c:set var ="tablewidth" value="8"/> 

<c:forEach var = "image" items ="${ results.rows}" varStatus= "row">

	<c:if test= "${row.index  % tablewidth == 0}"> 
		<tr>
		
	</c:if>
	
	<c:set scope ="page" var="imgname" value="${image.stem}.${image.image_extension}"> </c:set>
	
		<td>
		
		<c:url value="" /> 
		
		<figure>
		<img src="${pageContext.request.contextPath}/waifu/${imgname}" 
		width="80" height="80" />		
		<br />
		<figcaption> Waifu # ${image.id}</figcaption>		
		</figure>
		</td>
		
	<c:if test= "${row.index + 1  % tablewidth == 0}"> 
		<tr>
		
	</c:if>
	
</c:forEach>
</table>


