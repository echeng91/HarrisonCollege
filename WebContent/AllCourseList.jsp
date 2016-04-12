<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Course List</title>
</head>
<body>
	<table>
		<tr>
			<th>Course ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Department</th>
			<th>Credits</th>
		</tr>
		<c:forEach items="${courselist}" var="course">
			<tr>
				<td><c:out value="${course.courseid}" /></td>
				<td><c:out value="${course.coursename}" /></td>
				<td><c:out value="${course.coursedescription}" /></td>
				<td><c:out value="${course.hcDepartment.deptname}" /></td>
				<td><c:out value="${course.credits}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>