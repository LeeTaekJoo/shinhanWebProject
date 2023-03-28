<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// JSP는 자바로 작성한 서버프로그램이다.
// JSP = JAVA + HTML
request.setCharacterEncoding("UTF-8");
String username = request.getParameter("username");	
String usermail = request.getParameter("usermail");	
String userid = request.getParameter("userid");	
String userpwd = request.getParameter("userpwd");	
%>    
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Form연습하기</h1>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><%=userid %></td>
		</tr>
		
		<tr>
			<td>비밀번호</td>
			<td><%=userpwd %></td>
		</tr>
		
		<tr>
			<td>유저네임</td>
			<td><%=username %></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><%=usermail %></td>
		</tr>
	</table>
</body>
</html>