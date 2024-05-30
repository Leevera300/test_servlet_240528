<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<%
	int cm = Integer.valueOf(request.getParameter("length"));
	double in = cm / 2.54;
	double yard = cm / 91.44;
	double feet = cm / 30.48;
	double meter = cm / 100.0;
	String[] conversionArr = request.getParameterValues("conversion");
	%>
	
	<h1>길이 변환 결과</h1>
	<h3><%=cm %>cm</h3>
	<hr>
	<%
		if (conversionArr != null) {
			for(String conversion : conversionArr) {
				if (conversion == "in") {
					out.print(in + "in");
				} else if(conversion == "yard") {
					out.print(yard + "yard");
				}
				
			}
		}
	%>
	
	
</body>
</html>