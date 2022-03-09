<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/form.css">
<title>Insert title here</title>
</head>
<body>
	<form action="form" accept-charset="utf-8" name="newTodo" method="post">
		<header>
			<h1>할일 등록</h1>
		</header>
		<main>
			<div id="title">
				<h3>어떤일인가요?</h3>
				<input class="textbox" type="text" value="swift 공부하기(24자까지)" name="title"></input>
			</div>
			
			<div id="name">
				<h3>누가 할일인가요?</h3>
				<input class="textbox" type="text" value="홍길동" name="name"></input>
			</div>
			
			<div id="sequence">
				<h3>우선순위를 선택하세요</h3>
				<div class="radiobox">
					<input type="radio" name="type" value="1" checked="checked">1순위
					<input type="radio" name="type" value="2">2순위
					<input type="radio" name="type" value="3">3순위
				</div>
			</div>
		</main>
		<footer>
			<a href="/todosapp/main">이전</a>
			<input type="submit"/>
			<input type="reset"/>
		</footer>
	</form>
</body>
</html>