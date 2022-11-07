<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./allBoot.jsp"%>
</head>
<body>
	<div class="container p-12">
		<%@include file="Navbar.jsp"%>
		<br> <br>
		<h3 class="text-center"
			style="letter-spacing: 0.5px; padding-top: 5px; padding-bottom: 5px;">||
			SHOW ALL USERS ||</h3>
		<br>

		<c:forEach items="${primeList }" var="prime">
			<div class="row">
				<div class="col-12">
					<div class="card mt-3">
						<div class="container text-center">
							<img src="resourses/img/prime.png"
								class="card-img-top mega-img text-center m-3 float-left"
								alt="...">
						</div>
						<div class="card-body">

							<h3 class="card-id" style="color: black;">User Id : ${prime.id }</h3>
							<hr>
							<h4 class="card-name">UserName : ${prime.name }</h4>
							<h5 class="card-name">LowerBound : ${prime.lowerLimit }</h5>
							<h5 class="card-name">UpperBound : ${prime.upperLimit }</h5>
							<h5 class="card-name">Prime number generator algorithm : ${prime.primeStrategy }</h5>
							<h5 class="card-name">Total prime numbers between the range
								: ${prime.list }</h5>
							<h5 class="card-name">Algorithm runtime : ${prime.executionTime } ms</h5>
							<br>
							<h4 class="card-text" style="direction: ltr;">${prime.time }</h4>
							<div class="container text-center">
								<a
									href="${pageContext.request.contextPath }/deletePrime/${prime.id }"
									class="btn btn-del" style="margin-left: 5px" onclick="alert('Do you really want to delete ID number ${prime.id } data.')">Delete</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>
	<br>
</body>
</html>