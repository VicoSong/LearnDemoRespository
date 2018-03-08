<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>通过pageContext对象取得不同范围的属性</title>
</head>
<body>
	<%
		pageContext.setAttribute("name","page_James");
		request.setAttribute("name","page_Tom");
		session.setAttribute("name","page_Jason");
		application.setAttribute("name","page_Kangkang");
	%>
	<%
		String pageStr=(String)pageContext.getAttribute("name",pageContext.PAGE_SCOPE);
		String requestStr=(String)pageContext.getAttribute("name",pageContext.REQUEST_SCOPE);
		String sessionStr=(String)pageContext.getAttribute("name",pageContext.SESSION_SCOPE);
		String applicationStr=(String)pageContext.getAttribute("name",pageContext.APPLICATION_SCOPE);	    
	%>
	<%="page范围：name属性值"+pageStr %><br>
	<%="request范围：name属性值"+requestStr %><br>
	<%="session范围：name属性值"+sessionStr %><br>
	<%="application范围：name属性值"+applicationStr %><br>
</body>
</html>