<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>设置并获得session时间</title>
</head>
<body>
	<%
		String strGetId=session.getId();
	    out.println("session的ID是"+strGetId);
	    Long longGetCreationTime=session.getCreationTime();
	    out.println("session生成的时间是"+longGetCreationTime+"<br>");
	    
	    Long longGetLastAccessedTime=session.getLastAccessedTime();
	    out.println("用户最后通过session发送请求时间"+longGetLastAccessedTime+"<br>");
	    
	    int  longGetMaxInactiveInterval=session.getMaxInactiveInterval();
	    out.println("用户最后通过session发送请求时间"+longGetCreationTime+"<br>");
	    
	    boolean isNew=session.isNew();
	    out.println("session是否为新"+isNew+"<br>");
	    
	    session.setMaxInactiveInterval(100);
	    
	%>
</body>
</html>