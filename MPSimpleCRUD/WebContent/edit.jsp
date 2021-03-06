<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">


<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/images/apple-icon.png">
<link rel="icon" type="image/png" href="assets/images/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Add A Happy Peanut</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<!--     Fonts and icons     -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css"
	rel="stylesheet">

<!-- CSS Files -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="assets/css/gsdk-bootstrap-wizard.css" rel="stylesheet" />

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="assets/css/demo.css" rel="stylesheet" />
<link href="assets/css/add.css" rel="stylesheet" />

</head>


<body>

	<!--   Big container   -->
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">

				<!--      Wizard container        -->
				<div class="wizard-container">

					<div class="card wizard-card" data-color="orange"
						id="wizardProfile">
						<form action="edit?id=<c:out value="${member.id}"/>" method="post">
							<!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

							<div class="wizard-header">
								<h3>
									<b>EDIT</b> THIS OLD PEANUT <br> <small>Why can't
										you just buy a new pack?</small>
								</h3>
							</div>

							<div class="wizard-navigation">
								<ul>
									<li><a href="#about" data-toggle="tab">About</a></li>
									<li><a href="#description" data-toggle="tab">Account</a></li>
									<li><a href="#social" data-toggle="tab">Address</a></li>
								</ul>

							</div>

							<div class="tab-content">
								<div class="tab-pane" id="about">
									<div class="row">
										<h4 class="info-text">Let's start with your peanut's info</h4>
										<div class="col-sm-4 col-sm-offset-1">
											<div class="picture-container">
												<div class="picture">
													<img src="assets/images/default-avatar.png"
														class="picture-src" id="wizardPicturePreview" title="" />
													<input type="file" id="wizard-picture">
												</div>
												<h6>Choose Picture</h6>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>Profile Photo <small>(required)</small></label> <input
													name="picture" type="text" class="form-control"
													placeholder="Andrew..."
													value="<c:out value="${member.picture}"/>" required>
											</div>
											<div class="form-group">
												<label>First Name <small>(required)</small></label> <input
													name="firstName" type="text" class="form-control"
													placeholder="Andrew..."
													value="<c:out value="${member.firstName}"/>">
											</div>
											<div class="form-group">
												<label>Last Name <small>(required)</small></label> <input
													name="lastName" type="text" class="form-control"
													placeholder="Smith..."
													value="<c:out value="${member.lastName}"/>">
											</div>
										</div>
										<div class="col-sm-10 col-sm-offset-1">
											<div class="form-group">
												<label>Motto <small>(required)</small></label> <input
													name="motto" type="text" class="form-control"
													placeholder="Roses are red..."
													value="<c:out value="${member.motto}"/>">
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="description">
									<h4 class="info-text">Does peanut have any new tricks?</h4>
									<div class="row">

										<div class="col-sm-10 col-sm-offset-1">

											<div class="form-group">
												<label>Profession</label><br> <select name="profession"
													class="form-control"
													value="<c:out value="${member.profession}"/>" required>

													<c:forEach var="title" items="${titles}">
														<option value="${title}"
															${title == member.profession ? 'selected="selected"' : ''}>${title}</option>
													</c:forEach>

												</select>
											</div>

											<div class="form-group">
												<label>Skills <small>(required)</small></label> <input
													name="skills" type="text" class="form-control"
													placeholder="student , developer, etc..."
													value="<c:out value="${member.skills}"/>" required>
											</div>

										</div>

									</div>
								</div>
								<div class="tab-pane" id="social">
									<h4 class="info-text">Show off your peanut!</h4>
									<div class="row">
										<div class="col-sm-10 col-sm-offset-1">

											<div class="form-group">
												<label>FaceBook <small>(required)</small></label> <input
													name="facebook" type="text" class="form-control"
													placeholder="https://facebook.com/(profile)..."
													value="<c:out value="${member.facebook}"/>" required>
											</div>
											<div class="form-group">
												<label>GitHub <small>(required)</small></label> <input
													name="github" type="text" class="form-control"
													placeholder="https://github.com/(profile)..."
													value="<c:out value="${member.github}"/>" required>
											</div>
											<div class="form-group">
												<label>LinkedIn <small>(required)</small></label> <input
													name="linkedin" type="text" class="form-control"
													placeholder="https://linkedin.com/(profile)..."
													value="<c:out value="${member.linkedin}"/>" required>
											</div>

										</div>

									</div>
								</div>
							</div>
							<div class="wizard-footer height-wizard">
								<div class="pull-right">
									<input type='button'
										class='btn btn-next btn-fill btn-warning btn-wd btn-sm'
										name='next' value='Next' /> <input type='submit'
										class='btn btn-finish btn-fill btn-warning btn-wd btn-sm'
										name='finish' value='Finish' />

								</div>

								<div class="pull-left">
									<input type='button'
										class='btn btn-previous btn-fill btn-default btn-wd btn-sm'
										name='previous' value='Previous' />
								</div>
								<div class="clearfix"></div>
							</div>

						</form>
					</div>
				</div>
				<!-- wizard container -->
			</div>
		</div>
		<!-- end row -->
	</div>
	<!--  big container -->

	<div class="footer">
		<div class="container">
			Made with <i class="fa fa-heart heart"></i> by <a
				href="http://adcootauco.herokuapp.com"><span class="foncy">Foncy
					Cootauco</span></a>.
		</div>
	</div>
</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.bootstrap.wizard.js"
	type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="assets/js/gsdk-bootstrap-wizard.js"></script>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<script src="assets/js/jquery.validate.min.js"></script>

</html>
