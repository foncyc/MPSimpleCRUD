<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="partials/header.jsp"%>

<c:set var="message" value="${error}" />


<c:if test="${message != null}">
	<div class="container login-container">
		<div class="alert alert-warning alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<strong>Error!</strong>
			<c:out value="${message}" />
		</div>

	</div>
</c:if>

<div class="container login-container">

	<form class="form-signin" action="register" method="post">
		<h2 class="form-signin-heading">Create a Peanut</h2>

		<label for="inputEmail" class="sr-only">Email address</label> <input
			name="email" type="email" id="inputEmail" class="form-control"
			placeholder="Email address" required autofocus> <label
			for="inputPassword" class="sr-only">Password</label> <input
			name="password" type="password" id="inputPassword"
			class="form-control" placeholder="Password" required> <label
			for="password_confirmation" class="sr-only">Password</label> <input
			name="password_confirmation" type="password"
			id="password_confirmation" class="form-control"
			placeholder="Confirm Password" required>

		<button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
	</form>

	<div class="">
		<div class="">
			<span>Already have an account?</span> <a href="login.jsp">Login</a>
		</div>
	</div>


</div>

<!-- /container -->

<%@ include file="partials/footer.jsp"%>