<nav class="navbar navbar-default navtop navbar-fixed-top navbar-custom">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><i class="fa fa-linux" aria-hidden="true"></i> </a>

		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="#"><i class="fa fa-info" aria-hidden="true"></i>
						About</a></li>
				<c:if test="${user != null}">
					<li><a href="add"><i class="fa fa-plus" aria-hidden="true"></i>
						Add</a></li>
				</c:if>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${user == null}">
					<li><a data-toggle="modal" href="javascript:void(0)"
						onclick="openLoginModal();"><i class="fa fa-sign-in"
							aria-hidden="true"></i> Login </a></li>
					<li><a data-toggle="modal" href="javascript:void(0)"
						onclick="openRegisterModal();"><i class="fa fa-user-plus"
							aria-hidden="true"></i> Register </a></li>
				</c:if>
				<c:if test="${user != null}">
					<li><a href="#"><i class="fa fa-user-circle-o" aria-hidden="true"></i> <c:out value="${user}"/></a></li>
					<li><a href="logout"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
				</c:if>
				
				<!--<li><a href="#"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Account</a></li>-->
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>