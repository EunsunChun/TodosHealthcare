<%@page import="javax.sound.midi.SysexMessage"%>
<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8"%>
	<!-- contentType="text/html;charset=utf-8" 에서 charset부분 없애니 됨!why? -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<style type="text/css">
/* Space out content a bit */
body {
	padding-top: 20px;
	padding-bottom: 20px;
}

/* Everything but the jumbotron gets side spacing for mobile first views */
.header, .marketing, .footer { 
	padding-right: 15px;
	padding-left: 15px;
}

/* Custom page header */
.header {
	border-bottom: 1px solid #e5e5e5;
}
/* Make the masthead heading the same height as the navigation */
.header h3 {
	padding-bottom: 19px;
	margin-top: 0;
	margin-bottom: 0;
	line-height: 40px;
}

/* Custom page footer */
.footer {
	position: absolute;
	bottom: 0;
	width: 700px;;
	/* Set the fixed height of the footer here */
	height: 10px;
	padding-top: 19px;
	color: #777;
	border-top: 1px solid #e5e5e5;
}

/* Customize container */
@media ( min-width : 768px) {
	.container {
		max-width: 730px;
	}
}

.container {
	position: relative;
}

.container-narrow>hr {
	margin: 30px 0;
}

/* Main marketing message and sign up button */
.jumbotron {
	text-align: center;
	border-bottom: 1px solid #e5e5e5;
}

/* Supporting marketing content */
.marketing {
	margin: 40px 0;
}

.marketing p+h4 {
	margin-top: 28px;
}

/* Responsive: Portrait tablets and up */
@media screen and (min-width: 768px) {
	/* Remove the padding we set earlier */
	.header, .marketing, .footer {
		padding-right: 0;
		padding-left: 0;
	}
	/* Space out the masthead */
	.header {
		margin-bottom: 30px;
	}
	/* Remove the bottom border on the jumbotron for visual effect */
	.jumbotron {
		border-bottom: 0;
	}
}
</style>

</head>

<body>
	<div class="container">
		<br />
		<div class="header">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation" class="active"><a href="mobile">Home</a></li>
					<li role="presentation"><a href="#">About</a></li>
					<li role="presentation"><a href="#">Contact</a></li>
				</ul>
			</nav>
			<br /> <br /> <br />
			<h3 class="text-muted">TODOS TEST</h3>
		</div>
		<br />
		<div>
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<span class="navbar-brand">회원추가</span>
			</div>
			<form id="form" action="join" method="post" class="navbar-form navbar-right" enctype="multipart/form-data">
				<input type="file" name="file[]" id="file" multiple/>
				<div class="form-group">
					<input type="text" name="id" id="id" class="form-control"
						placeholder="아이디" />
				</div>
				<div class="form-group">
					<input type="password" name="pwd" id="pwd" class="form-control"
						placeholder="비밀번호" />
				</div>
				<br> 
				<div class="form-group">
					<input type="text" name="name" id="name" class="form-control"
						placeholder="이름" />
				</div>
				<div class="form-group">
					<input type="text" name="age" id="age" class="form-control"
						placeholder="나이" />
				</div>
				<input type="button" id="join" class="btn btn-success" value="추가">
			</form>
		</div>
		<br /> <br /> <br /><br /> <br /> <br />
		<div class="jumbotron" style="margin-bottom: 0px;">
			<div>
				<table class="table">
					<thead>
						<tr>
							<th style="text-align: center">회원번호</th>
							<th style="text-align: center">아이디</th>
							<th style="text-align: center">비밀번호</th>
							<th style="text-align: center">이름</th>
							<th style="text-align: center">나이</th>
							<th style="text-align: center"></th>
						</tr>
					</thead>
					<c:forEach items="${members}" var="member">
						<tbody>
							<tr>
								<td><a href="goedit?memNum=${member.mem_num}" id="num"
									onClick="window.open(this.href, '', 'width=496px, height=440px, left=500px,top=150px'); return false;">${member.mem_num}</a></td>
								<td>${member.mem_id}</td>
								<td id="nowpwd">${member.mem_pwd}</td>
								<td>${member.mem_name}</td>
								<td>${member.mem_age}</td>
								<td><input type="button" id="delete"
									class="button btn btn-danger" style="padding: 1px 12px;"
									value="삭제" onClick="deleteMember(${member.mem_num})" /></td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
		<br />
		<br />
		<br />
		<br />
		<footer class="footer">
			<p>ⓒ TODOS 2017
			</p>
		</footer>
	</div>
</body>
</html>