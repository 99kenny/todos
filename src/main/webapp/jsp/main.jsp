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
					<h5 class="content"><%=todo.get(i).getRegdate() %> <%=todo.get(i).getName() %><%=todo.get(i).getSeqeuence() %></h5>
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
				System.out.println(doing.size());
				for(int i = 0; i < doing.size(); i++){
			%>
				<li>
					<h4 class="title"><%=doing.get(i).getTitle() %></h4>
					<h5 class="content"><%=doing.get(i).getRegdate() %> <%=doing.get(i).getName() %><%=doing.get(i).getSeqeuence() %></h5>
					<button class="btn" id="<%=todo.get(i).getId() %> <%=todo.get(i).getType() %>">-></button>
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
					<h5 class="content"><%=done.get(i).getRegdate() %> <%=done.get(i).getName() %><%=done.get(i).getSeqeuence() %></h5>
				</li>
			<% 	
				}
			%>
		</ul>
	</div>
</main>
</body>
</html>