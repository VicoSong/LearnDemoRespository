<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>session范围</title>
</head>
<body>
	<%--取得Session范围属性 --%>
	<%String str=(String)session.getAttribute("name"); %>
	<%out.println("Session范围：name属性值"+str); %>>
</body>
</html>