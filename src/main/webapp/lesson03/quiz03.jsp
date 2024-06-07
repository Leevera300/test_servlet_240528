<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
	header {height:80px;
	background-color: orange;}
	nav {height:50px;
	background-color: orange;}
	.contents {min-height:100px;}
	footer {height: 50px;}
	.nav .nav-link {
    color: white;
	}
</style>
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// select 쿼리 수행
	String query = "select * from `url`";
	ResultSet res = ms.select(query);
%>
	<div class="container" id="wrap">
		<header class="text-white d-flex justify-content-center align-items-center">
			<h1>HONG당무 마켓</h1>
		</header>
		<nav>
			<ul class="nav nav-fill w-100 font-weight-bold">
            	<li class="nav-item"><a class="nav-link" href="/lesson03/quiz03.jsp">리스트</a></li>
                <li class="nav-item"><a class="nav-link" href="/lesson02/quiz03_1.jsp">물건 올리기</a></li>
                <li class="nav-item"><a class="nav-link" href="">마이페이지</a></li>
            </ul>
		</nav>
		<section class="contents">
			<div class="list d-flex">
				<%
				while (res.next()) {
				%>
				<div class="border border-danger p-2">
					<img src="<%= res.getInt("pictureUrl") %>" width="300">
					<b><%= res.getString("title") %></b>
					<span><%= res.getString("price") %></span>
					<span><%= res.getString("sellerId") %></span>
				</div>
				<%
				}
				%>
			</div>
		</section>
		<footer></footer>
	</div>
<%
	// DB 연결 해제
	ms.disconnect();
%>	
</body>
</html>