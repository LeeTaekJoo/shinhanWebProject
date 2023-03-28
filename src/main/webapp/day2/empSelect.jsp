<%@page import="java.util.List"%>
<%@page import="aproject.vo.EmpVO"%>
<%@page import="aproject.model.EmpService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
EmpService eService = new EmpService();
List<EmpVO> emplist = eService.selectAll();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

/* * {
	width: 1000px;
	margin: 0 auto;
}

body {
	background-image: url(images/shinhan.jpg);
	background-attachment: local;
	background-repeat: repeat-y;
	background-position: center top;
}

h1 {
	text-align: center;
	border: 5px white;
	border-radius: 80px/40px;
	color: white;
	background: linear-gradient(45deg, Violet, Orange);
	margin-bottom: 20px;
	text-shadow: 6px 2px 2px gray;
}

thead tr {
	background: linear-gradient(lightCyan, skyBlue, deepSkyBlue);
	color: white;
}

td {
	border: 1px solid black;
	font-family: 'Hanna', sans-serif;
	text-align: center;
}

.empid {
	background: linear-gradient(Red 70%, Orange);
	color: white;
} */
</style>

</head>

<body>
<div class="container mt-3">
	<h1>직원목록</h1>
	<button type="button" class="btn btn-success" onclick="location.href='emp_insert.html'">직원등록</button>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>직원번호</th>
				<th>이름</th>
				<th>성</th>
				<th>이메일</th>
				<th>급여</th>
				<th>입사일</th>
				<th>전화번호</th>
				<th>직책</th>
				<th>매니저</th>
				<th>커미션</th>
				<th>부서</th>
			</tr>
		</thead>

		<tbody>
			<%
			for (EmpVO emp : emplist) {
			%>
			<tr>
				<td class="empid"><%=emp.getEmployee_id()%></td>
				<td><%=emp.getFirst_name()%></td>
				<td><%=emp.getLast_name()%></td>
				<td><%=emp.getEmail()%></td>
				<td><%=emp.getSalary()%></td>
				<td><%=emp.getHire_date()%></td>
				<td><%=emp.getPhone_number()%></td>
				<td><%=emp.getJob_id()%></td>
				<td><%=emp.getManager_id()%></td>
				<td><%=emp.getCommission_pct()%></td>
				<td><%=emp.getDepartment_id()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</div>
</body>
</html>