<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>테스트</h1>
	<hr>
	<p>멤버 id : ${cus_info.m_id}</p>
	<p>전화번호 : ${cus_info.m_phonenum}</p>
	<p>주소 : ${cus_info.m_address}</p>
	<h2>상품 정보</h2>
	<c:forEach var="cart_info" items="${cart_info}">
	<p> 상품 사진 : ${cart_info.p_picture}</p>
	<p> 상품명 : ${cart_info.p_name}</p>
	<p>	가격 : ${cart_info.p_price}</p>
	<p>	개수 : ${cart_info.p_quantity}개</p>
	</c:forEach>
	
</body>
</html>