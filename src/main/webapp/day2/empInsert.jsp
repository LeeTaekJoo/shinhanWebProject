<%@page import="aproject.model.EmpService"%>
<%@page import="com.shinhan.dbUtil.DateUtil"%>
<%@page import="aproject.vo.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String empid = request.getParameter("employee_id");
String firstname = request.getParameter("first_name");
String lastname = request.getParameter("last_name");
String email = request.getParameter("email");
String phonenumber = request.getParameter("phone_number");
String hdate = request.getParameter("hire_date");
String jobid = request.getParameter("job_id");
String sal = request.getParameter("salary");
String cmp = request.getParameter("commission_pct");
String mgrid = request.getParameter("manager_id");
String deptid = request.getParameter("department_id");



EmpVO emp = new EmpVO();
emp.setCommission_pct(Double.parseDouble(cmp));
emp.setDepartment_id(Integer.parseInt(deptid));
emp.setEmail(email);
emp.setEmployee_id(Integer.parseInt(empid));
emp.setFirst_name(firstname);
emp.setLast_name(lastname);
emp.setPhone_number(phonenumber);
emp.setSalary(Integer.parseInt(sal));
emp.setHire_date(DateUtil.converToDate(hdate));
emp.setJob_id(jobid);
emp.setManager_id(Integer.parseInt(mgrid));
EmpService service = new EmpService();
service.empInsert(emp);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
p {border: 1px solid green;}
</style>
</head>
<body>
<h1>신규직원을 DB에 저장합니다.</h1>
<p>직원번호 : <%=empid %> </p>
<p>이름 : <%=firstname %> </p>
<p>성 : <%=lastname %> </p>
<p>전화번호 : <%=phonenumber %> </p>
<p>이메일 : <%=hdate %> </p>
<p>직책 : <%=jobid %> </p>
<p>연봉 : <%=sal %> </p>
<p>부서번호 : <%=deptid %> </p>
<p>매니저 아이디 : <%=mgrid %> </p>
<p>커미션 : <%=cmp %> </p>
</body>
</html>











