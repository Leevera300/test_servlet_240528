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
	double in = 0;
	double yard = 0;	
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
				if (conversion.equals("in")) {
					in = cm / 2.54;
				} else if(conversion.equals("yard")) {
					yard = cm / 91.44;
				} else if(conversion.equals("feet")) {
					feet = cm / 30.48;
				} else if(conversion.equals("meter")) {
					meter = cm / 100.0;
				}
				
			}
		}
	%>
	<h3><%=in %> in</h3>
	<h3><%=yard %> yd</h3>
	<h3><%=feet %> ft</h3>
	<h3><%=meter %> m</h3>
	
</body>
</html>