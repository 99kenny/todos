<%@page import="java.sql.Timestamp"%>
<%@page import="dto.Todo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="javascript/ajax.js"></script>

<title>Insert title here</title>
</head>
<body>
<header>
	<h1 class="title" id="title">나의 해야할 일들</h1>
	<a href="/todosapp/form">새로운 TODO 등록</a>
</header>
<main>
	<div id='todo'>
		<h3>TODO</h3>
		<ul>
			<%
				List<Todo> todo = (List<Todo>)request.getAttribute("todo");
				for(int i = 0; i < todo.size(); i++){
			%>
				<li>
					<h4 class="title"><%=todo.get(i).getTitle() %></h4>
					<h5 class="content">등록날짜 <%=todo.get(i).getRegdate().split(" ")[0] %>, <%=todo.get(i).getName() %>, 우선순위 <%=todo.get(i).getSeqeuence() %></h5>
					<button class="btn" id="<%=todo.get(i).getId() %> <%=todo.get(i).getType() %>">-></button>
				</li>
				
			<% 	
				}
			%>
			
		</ul>
	</div>
	
	<div id='doing'>
		<h3>DOING</h3>
		<ul>
			<%
				List<Todo> doing = (List<Todo>)request.getAttribute("doing");
				for(int i = 0; i < doing.size(); i++){
			%>
				<li>
					<%				System.out.println(doing.size()); %>
					<h4 class="title"><%=doing.get(i).getTitle() %></h4>
					<h5 class="content">등록날짜 <%=doing.get(i).getRegdate().split(" ")[0] %>, <%=doing.get(i).getName() %>, 우선순위 <%=doing.get(i).getSeqeuence() %></h5>
					<button class="btn" id="<%=doing.get(i).getId() %> <%=doing.get(i).getType() %>">-></button>
				</li>
			<% 	
				}
			%>
		</ul>
	</div>
	
	<div id='done'>
		<h3>DONE</h3>
		<ul>
			<%
				List<Todo> done = (List<Todo>)request.getAttribute("done");
				for(int i = 0; i < done.size(); i++){
			%>
				<li>
					<h4 class="title"><%=done.get(i).getTitle() %></h4>
					<h5 class="content">등록날짜 <%=done.get(i).getRegdate().split(" ")[0] %>, <%=done.get(i).getName() %>, 우선순위 <%=done.get(i).getSeqeuence() %></h5>
				</li>
			<% 	
				}
			%>
		</ul>
	</div>
</main>
</body>
</html>