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

	<form class="form-signin" action="login" method="post">
		<h2 class="form-signin-heading">Please sign in</h2>

		<label for="inputEmail" class="sr-only">Email address</label> <input
			name="email" type="email" id="inputEmail" class="form-control"
			placeholder="Email address" required autofocus> <label
			for="inputPassword" class="sr-only">Password</label> <input
			name="password" type="password" id="inputPassword"
			class="form-control" placeholder="Password" required>

		<div class="checkbox">
			<label> <input type="checkbox" value="remember-me">
				Remember me
			</label>
		</div>

		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
			in</button>
	</form>

	<div class="">
		<div class="">
			<span>Looking to <a href="register.jsp">create
					an account</a> ?
			</span>
		</div>
	</div>

</div>


<!-- /container -->

<%@ include file="partials/footer.jsp"%>