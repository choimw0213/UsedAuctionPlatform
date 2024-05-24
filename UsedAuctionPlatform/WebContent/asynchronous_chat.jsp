<%@page import="vo.ChatVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${userId eq null}">
	<c:redirect url = "controller?cmd=loginUI"/>
</c:if>
<% String userId = (String)session.getAttribute("userId"); %>
<% ArrayList<ChatVO> chat = (ArrayList<ChatVO>)request.getAttribute("chat"); %>

<% if(chat != null){ %>
<% for(int i=0; i<chat.size(); i++){ %>
<% if(userId.equals(chat.get(i).getFromId())){ %>
	<div class="chatbox me"><%= chat.get(i).getContent() %></div>
	<% } else if(userId.equals(chat.get(i).getToId())){%>
	<div class="chatbox you"><%= chat.get(i).getContent() %></div>
	<% } %>
<% } %>
<% } %>