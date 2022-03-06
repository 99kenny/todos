<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/todosapp/from" accept-charset="utf-8" name="newTodo" method="post">
		<h1>할일 등록</h1>
		<h3>어떤일인가요?</h3>
		<input type="text" value="swift 공부하기(24자까지)" name="title"></input>
	
		<h3>누가 할일인가요?</h3>
		<input type="text" value="홍길동" name="name"></input>
		
		<h3>우선순위를 선택하세요</h3>
		<input type="radio" name="type" value="1순위">1순위</input>
		<input type="radio" name="type" value="2순위">2순위</input>
		<input type="radio" name="type" value="3순위">3순위</input>
		<a href="/todosapp/main">이전</a>
		<input type="submit"/>
		<input type="reset"/>
	</form>
</body>
</html>