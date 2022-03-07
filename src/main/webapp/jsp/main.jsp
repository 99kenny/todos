<%@page import="java.sql.Timestamp"%>
<%@page import="dto.Todo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="main.css">
<title>Insert title here</title>
</head>
<body>
<h1>나의 해야할 일들</h1>
<a href="/todosapp/form">새로운 TODO 등록</a>
<div>
	<h3>TODO</h3>
	<ul>
		<%
			List<Todo> todo = (List<Todo>)request.getAttribute("todo");
			for(int i = 0; i < todo.size(); i++){
		%>
			<li><%=todo.get(i) %></li>
			<button>-></button>
		<% 	
			}
		%>
		
	</ul>
</div>

<div>
	<h3>DOING</h3>
	<ul>
		<%
			List<Todo> doing = (List<Todo>)request.getAttribute("doing");
			for(int i = 0; i < todo.size(); i++){
		%>
			<li><%=todo.get(i) %></li>
			<button>-></button>
		<% 	
			}
		%>
	</ul>
</div>

<div>
	<h3>DONE</h3>
	<ul>
		<%
			List<Todo> done = (List<Todo>)request.getAttribute("done");
			for(int i = 0; i < todo.size(); i++){
		%>
			<li><%=todo.get(i) %></li>
		<% 	
			}
		%>
	</ul>
</div>

</body>
</html>