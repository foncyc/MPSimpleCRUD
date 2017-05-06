<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="partials/header.jsp"%>
<%@ include file="partials/navbar.jsp"%>

<div class="container">
	<div class="row">
		<h1 class="title">
			APP DEV 2017 <br> <small> Team Happy Peanuts</small>
		</h1>


		<!-- start col-sm-10 -->
		<div class="col-sm-10 col-sm-offset-1">


			<c:forEach var="member" items="${members}">
				
			
				<!-- start member data -->
				<div class="col-md-4 col-sm-6">
					<div class="card-container">
						<div class="card">
							<div class="front">
								<div class="cover">
									<img src="assets/images/rotating_card_thumb2.png" />
								</div>
								<div class="user">
									<img class="img-circle" src="<c:out value="${member.picture}"/>" />
								</div>
								<div class="content">
									<div class="main">
										<h3 class="name"><c:out value="${member.firstName}"/>  <c:out value="${member.lastName}"/></h3>
										<p class="profession"><c:out value="${member.profession}"/></p>
										<p class="text-center">"<c:out value="${member.motto}"/>"</p>
									</div>
									<div class="footer">
										<div class="rating">
											<i class="fa fa-mail-forward"></i> Flip
										</div>
									</div>
								</div>
							</div>
							<!-- end front panel -->
							<div class="back">
								<div class="header">
									<div class="motto">

										<a href="edit?id=<c:out value="${member.id}"/>" class="betw"><i class="fa fa-pencil" aria-hidden="true"></i> Edit </a> 
										<a href="delete?id=<c:out value="${member.id}"/>" class="betw"><i class="fa fa-trash" aria-hidden="true"></i> Delete </a>
									</div>
								</div>
								<div class="content">
									<div class="main">
										<h4 class="text-center">Skills</h4>
										<p class="text-center"><c:out value="${member.skills}"/></p>
									</div>
								</div>
								<div class="footer">

									<div class="social-links text-center">
										<a href="<c:out value="${member.facebook}"/>" class="facebook" target="_blank"><i
											class="fa fa-facebook fa-fw"></i></a> <a
											href="<c:out value="${member.github}"/>" class="google" target="_blank"><i
											class="fa fa-github fa-fw"></i></a> <a
											href="<c:out value="${member.linkedin}"/>" class="twitter" target="_blank"><i
											class="fa fa-linkedin fa-fw"></i></a>
									</div>
								</div>
							</div>
							<!-- end back panel -->
						</div>
						<!-- end card -->
					</div>
					<!-- end card-container -->
				</div>
				<!-- start member data -->
			</c:forEach>



		</div>
		<!-- end col-sm-10 -->
	</div>
	<!-- end row -->
	<div class="space-200"></div>



</div>

<%@ include file="partials/footer.jsp"%>
