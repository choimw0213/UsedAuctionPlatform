<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
var strPlusPoint = <%= request.getAttribute("plusPoint") %>;
console.log(strPlusPoint);
	if(strPlusPoint != null){
		alert('포인트 충전 완료')
	}else{
		alert('포인트 환전 완료')
	}
location.href='controller?cmd=myPageUI';	
</script>


