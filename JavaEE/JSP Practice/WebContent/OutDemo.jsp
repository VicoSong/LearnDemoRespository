<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>使用out对象求得缓冲区使用大小</title>
</head>
<body>
	<%
		int all=out.getBufferSize();
		int remain=out.getRemaining();
		int use=all-remain;
		out.println("使用缓冲区大小："+use+"<br>");
		out.print("使用缓冲区大小："+use);
	%>
</body>
</html>