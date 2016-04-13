<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
		<tr>
			<th>Class ID</th>
			<th>Course ID</th>
			<th>Course Name</th>
			<th>Instructor</th>
			<th>Classroom</th>
			<th>Building</th>
			<th>Schedule</th>
			<th>Semester</th>
			<th>Credits</th>
			<th>action</th>
		</tr>

		<c:forEach items="${addlist}" var="add">
			<tr>
				<td><c:out value="${add.classid}" /></td>
				<td><c:out value="${add.hcCours.courseid}" /></td>
				<td><c:out value="${add.hcCours.coursename}" /></td>
				<td><c:out value="${add.hcInstructor.instructorname}" /></td>
				<td><c:out value="${add.hcClassroom.roomnumber}" /></td>
				<td><c:out value="${add.hcClassroom.buildingname}" /></td>
				<td><c:out value="${add.schedule}" /></td>
				<td><c:out value="${add.semester}" /></td>
				<td><c:out value="${add.hcCours.credits}" /></td>
				<td><form action="AddServlet" method="Post"><input type="submit" name="add" value="${add.classid}" ></form></td>
			</tr>
		</c:forEach>
</body>
</html>