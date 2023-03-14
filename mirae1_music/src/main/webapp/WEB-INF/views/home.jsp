<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<jsp:include page="include/header.jsp"></jsp:include>

<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
<jsp:include page="include/footer.jsp"></jsp:include>
</html>
