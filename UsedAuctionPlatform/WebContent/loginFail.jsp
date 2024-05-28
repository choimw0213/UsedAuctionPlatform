<%@page import="com.google.gson.JsonObject" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${userId ne null}">
	<c:redirect url="controller?cmd=mainUI" />
</c:if>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인 실패</title>
</head>
<body>
    <script>
        alert("존재하지 않는 회원정보 입니다.");
        location.href = "controller?cmd=loginUI";
    </script>
</body>
</html>   
    
    
    