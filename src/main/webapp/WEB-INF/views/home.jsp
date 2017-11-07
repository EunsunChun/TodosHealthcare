<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<c:url value="/login" var="logoutUrl" />
	<!-- csrt for log out-->

	<form action="${logoutUrl}" method="post" id="logoutForm">
		<%
			System.out.println("로그아웃 in HOME");
		%>
	  <input type="hidden" 

		name="${_csrf.parameterName}"

		value="${_csrf.token}" />

	</form>
 	<script>

		function formSubmit() {

			document.getElementById("logoutForm").submit();

		}

	</script>

<form class="navbar-form navbar-right" >
 	<a href = "javascript:formSubmit()"> 로그아웃 </a> 
 	<%-- <a href = "${logoutUrl}"> 로그아웃 </a> --%>
</form>
<h1>
	Hello world!  
</h1>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
