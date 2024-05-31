<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
	int num1 = Integer.valueOf(request.getParameter("num1"));
	int num2 = Integer.valueOf(request.getParameter("num2"));
	String equation = request.getParameter("equations");
	
	double result = 0;
	if(equation.equals("+")) {
		result = num1 + num2;
	} else if(equation.equals("-")) {
		result = num1 - num2;
	} else if(equation.equals("*")) {
		result = num1 * num2;
		equation = "X";
	} else if(equation.equals("/")) {
		result = (double)num1 / num2;
	}
	%>
	
	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-4">
		<%=num1 %> <%=equation %> <%=num2 %> = <span class="text-info"><%= result %></span> 
		</div>
	</div>

</body>
</html>