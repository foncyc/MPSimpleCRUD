<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">


<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/images/apple-icon.png">
<link rel="icon" type="image/png" href="assets/images/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Edit Peanut Profile</title>

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
</head>


<body>
	<div class="image-container set-full-height"
		style="background-image: url('assets/images/wizard.jpg')">
		<!--   Creative Tim Branding   -->
		<a href="http://creative-tim.com">
			<div class="logo-container">
				<div class="logo">
					<img src="assets/images/new_logo.png">
				</div>
				<div class="brand">Creative Tim</div>
			</div>
		</a>

		<!--  Made With Get Shit Done Kit  -->
		<a
			href="http://demos.creative-tim.com/get-shit-done/index.html?ref=get-shit-done-bootstrap-wizard"
			class="made-with-mk">
			<div class="brand">GK</div>
			<div class="made-with">
				Made with <strong>GSDK</strong>
			</div>
		</a>

		<!--   Big container   -->
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2">

					<!--      Wizard container        -->
					<div class="wizard-container">

						<div class="card wizard-card" data-color="orange"
							id="wizardProfile">
							<form action="add" method="post">
								<!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

								<div class="wizard-header">
									<h3>
										<b>ADD</b> YOUR HAPPY PEANUT <br> <small>take
											your time and digest your peanuts properly</small>
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
											<h4 class="info-text">Let's start with your peanut's
												info</h4>
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
														placeholder="Andrew..." required>
												</div>
												<div class="form-group">
													<label>First Name <small>(required)</small></label> <input
														name="firstName" type="text" class="form-control"
														placeholder="Andrew...">
												</div>
												<div class="form-group">
													<label>Last Name <small>(required)</small></label> <input
														name="lastName" type="text" class="form-control"
														placeholder="Smith...">
												</div>
											</div>
											<div class="col-sm-10 col-sm-offset-1">
												<div class="form-group">
													<label>Motto <small>(required)</small></label> <input
														name="motto" type="text" class="form-control"
														placeholder="Roses are red...">
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="description">
										<h4 class="info-text">What can your peanut do?</h4>
										<div class="row">

											<div class="col-sm-10 col-sm-offset-1">

												<div class="form-group">
													<label>Profession</label><br> <select
														name="profession" class="form-control" required>
														<option value="...">...</option>
														<option value="ITDC Student">ITDC Student</option>
														<option value="Front End Dev">Front End Dev</option>
														<option value="Back End Dev">Back End Dev</option>
														<option value="Full Stack Dev">Full Stack Dev</option>
														<option value="Data Analyst">Data Analyst</option>
														<option value="Pen Tester">Pen Tester</option>
														<option value="Game Developer">Game Developer</option>
														<option value="Mobile Developer">Mobile Developer
														</option>
													</select>
												</div>
												<!-- <div class="form-group">
													<label>Job Description <small>(required)</small></label> <input
														name="profession" type="text" class="form-control"
														placeholder="student , developer, etc..." required>
												</div>-->
												<div class="form-group">
													<label>Skills <small>(required)</small></label> <input
														name="skills" type="text" class="form-control"
														placeholder="student , developer, etc..." required>
												</div>

											</div>

										</div>
									</div>
									<div class="tab-pane" id="social">
										<div class="row">
											<div class="col-sm-10 col-sm-offset-1">

												<div class="form-group">
													<label>FaceBook <small>(required)</small></label> <input
														name="facebook" type="text" class="form-control"
														placeholder="https://facebook.com/(profile)..." required>
												</div>
												<div class="form-group">
													<label>GitHub <small>(required)</small></label> <input
														name="github" type="text" class="form-control"
														placeholder="https://github.com/(profile)..." required>
												</div>
												<div class="form-group">
													<label>LinkedIn <small>(required)</small></label> <input
														name="linkedin" type="text" class="form-control"
														placeholder="https://linkedin.com/(profile)..." required>
												</div>

											</div>
											
										</div>
									</div>
								</div>
								<div class="wizard-footer height-wizard">
									<div class="pull-right">
										<input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm'
											name='next' value='Next' /> 
										<input type='submit' class='btn btn-finish btn-fill btn-warning btn-wd btn-sm'
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
					href="http://www.creative-tim.com">Creative Tim</a>. Free download
				<a href="http://www.creative-tim.com/product/bootstrap-wizard">here.</a>
			</div>
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
