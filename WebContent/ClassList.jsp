<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Menu.jsp" %>
<table class="table">



<br>
<br>
		<tr>
		
			<th>Class ID</th>
			<th>Course ID</th>
			<th>Classroom number</th>
			<th>Classroom building</th>
			<th>Schedule</th>
			<th>Semester</th>
			<th>Select</th>


		</tr>
		<c:forEach items="${classList}" var="a">
			<tr>
				<td><c:out value="${a.classid}" /></td>
				<td><c:out value="${a.hcCours.courseid}" /></td>
				<td><c:out value="${a.hcClassroom.roomnumber}" /></td>
				<td><c:out value="${a.hcClassroom.buildingname}" /></td>
				<td><c:out value="${a.schedule}" /></td>
				<td><c:out value="${a.semester}" /></td>
				<td> 
				<form action="GetRosterByClass" method="post">
				<input type="hidden" name="classid" value="${a.classid}" />
  <input type="submit" name="instructor" value="Get Roster By Class" > <br>
</form>
</td>
			</tr>
		</c:forEach>
	</table>
	
	<br>
<!-- 	
	<form action="ReturnToMenu" method="post">
	<input type="submit" value="Return to menu">
</form>

<form action="Logout" method="post">
	<input type="submit" value="Logout">
</form>
  --> 
  
</body>
</html>