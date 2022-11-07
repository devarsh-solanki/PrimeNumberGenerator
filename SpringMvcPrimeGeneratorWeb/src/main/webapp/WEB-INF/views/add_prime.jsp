<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./allBoot.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="Navbar.jsp"%>
		<br> <br>
		<h2 style="letter-spacing: 0.5px" class="text-center">|| PRIME
			NUMBER GENERATOR ||</h2>
		<br>
		<form action="SavePrime" method="post">
			<div class="mb-3">
				<label for="name" class="form-label">Username</label> <input
					type="text" class="form-control" id="name"
					aria-describedby="emailHelp" required name="name"
					placeholder="Type here...">
			</div>
			<label for="check-ok" name="radio-check" class="form-label">
				Prime Strategy </label>
			<div class="container">
				<div class="form-check">
					<input class="form-check-input" type="radio" name="primeStrategy"
						value="NativePrime1" id="primeStrategy"> <label
						class="form-check-label" for="primeStrategy"> NativePrime1 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="primeStrategy"
						value="NativePrime2" id="primeStrategy" checked> <label
						class="form-check-label" for="primeStrategy"> NativePrime2 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="primeStrategy"
						value="SieveOfEratosthenes" id="primeStrategy" checked> <label
						class="form-check-label" for="primeStrategy">
						SieveOfEratosthenes </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="primeStrategy"
						value="SieveBooleanPrimeMethod" id="primeStrategy" checked> <label
						class="form-check-label" for="primeStrategy">
						SieveBooleanPrimeMethod </label>
				</div>

			</div>
			<br>
			<div class="mb-3">
				<label for="lower" class="form-label">Lower Limit </label> <input
					type="number" class="form-control" id="lower"
					aria-describedby="emailHelp" required name="lowerLimit"
					placeholder="Enter lower bound...">
			</div>
			<div class="mb-3">
				<label for="upper" class="form-label">Upper Limit</label> <input
					type="number" class="form-control" id="upper" required name="upperLimit"
					placeholder="Enter upper bound...">
			</div>
			<div class="container text-center mt-4">
				<button type="submit" class="btn btn-col"
					style="letter-spacing: 0.5px; min-width: 100px;">SUBMIT</button>
				<button type="reset" class="btn btn-rel"
					style="letter-spacing: 0.5px; min-width: 100px;">RESET</button>
			</div>
		</form>
	</div>
	<br>
	<br>
	<br>
	<br>
	<footer class="container bg-light text-center text-lg-start">
		<!-- Copyright -->
		<div class="text-center p-3"
			style="background: #410fa8; color: white; letter-spacing: 0.5px;">
			© 2022 All rights reserved</div>
		<!-- Copyright -->
	</footer>
</body>
</html>