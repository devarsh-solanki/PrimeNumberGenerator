<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-lg navbar-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/">Prime
			Count</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="${pageContext.request.contextPath }/">Home</a></li>
				<li class="add_note.jsp"><a class="nav-link"
					href="${pageContext.request.contextPath }/addPrime">Add Prime</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath }/showPrime" tabindex="-1"
					aria-disabled="true">Show All</a></li>
			</ul>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-light" type="submit">Search</button>
			</form>
		</div>
	</div>
</nav>