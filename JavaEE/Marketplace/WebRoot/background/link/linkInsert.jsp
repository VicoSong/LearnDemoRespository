<%@ page contentType="text/html; charset=gb2312"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.domain.ManagerForm"%>
<script language="javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("������Ϣ����Ϊ��");
return false;
}
}
}
</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����̳ǵĺ�̨</title>
<link href="../../css/css.css" rel="stylesheet" type="text/css">
</head>
<link href="css/css.css" rel="stylesheet" type="text/css">
<body>
	<table width="755" border="0" align="center" cellpadding="0"
		cellspacing="0">

		<tr valign="bottom">
			<td height="108" colspan="2" background="image/banner1.jpg"><div
					align="center">
					<jsp:include page="../upTwo.jsp" />
				</div></td>
		</tr>
		<tr>
			<td width="24%" height="318"><jsp:include
					page="../../leftManager.jsp" /></td>
			<td width="76%" height="36" bgcolor="#FFFFFF">
				<div align="center">

					<table width="99%" height="16" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td bgcolor="#E6E6E6"><div align="center">
									<font color="#990000"><b>������վ��Ϣ</b></font>
								</div></td>
						</tr>
					</table>
					<br>
					<br>


					<form action="linkAction.do?action=2" method="post" name="form"
						onSubmit="return checkEmpty(form)">
						<table width="90%" height="60" border="1" cellpadding="0"
							cellspacing="0">
							<tr class="zi">
								<td width="25%" height="30"><div align="center">��վ����</div></td>
								<td width="75%">&nbsp;&nbsp;&nbsp;&nbsp;<input name="name"
									type="text" size="50"></td>
							</tr>
							<tr class="zi">
								<td height="30"><div align="center">��վ��ַ</div></td>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;<input name="address"
									type="text" size="50"></td>
							</tr>
						</table>
						<p>
							<input type="submit" name="Submit2" value="�ύ">&nbsp; <input
								type="reset" name="reset" value="���">&nbsp; <input
								type="button" name="back" value="����"
								onClick="javasrcipt:history.go(-1)">
						</p>
					</form>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
				</div>
			</td>
		</tr>
		<tr bgcolor="#FFFFFF">
			<td height="60" colspan="2"><p align="center"><jsp:include
						page="../downNews.jsp" />

				</p></td>
		</tr>
	</table>
</body>
</html>