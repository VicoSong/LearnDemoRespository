<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>设置页面自动跳转</title>
</head>
<body>
	<%--使用response对象的setIntHeader实现页面跳转 --%>
	<%
		response.setHeader("Refresh","10;URL=http://www.baidu.com");
	%>
</body>
</html>