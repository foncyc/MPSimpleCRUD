
<%@ include file="partials/header.jsp"%>
<%@ include file="partials/navbar.jsp"%>

<div class="container">
	<div class="row">
		<h1 class="title">
			APP DEV 2017 <br> <small>Happy Peanuts</small>
		</h1>
		<div class="col-sm-10 col-sm-offset-1">
			<div class="col-md-4 col-sm-6">
				<div class="card-container">
					<div class="card">
						<div class="front">
							<div class="cover">
								<img src="assets/images/rotating_card_thumb2.png" />
							</div>
							<div class="user">
								<img class="img-circle" src="assets/images/foncy.jpg" />
							</div>
							<div class="content">
								<div class="main">
									<h3 class="name">Foncy Cootauco</h3>
									<p class="profession">Student</p>
									<p class="text-center">"My country is the world, and my
										religion is to do good."</p>
								</div>
								<div class="footer">
									<div class="rating">
										<i class="fa fa-mail-forward"></i> Auto Rotation
									</div>
								</div>
							</div>
						</div>
						<!-- end front panel -->
						<div class="back">
							<div class="header">
								<div class="motto">

									<a href="#" class="betw"><i class="fa fa-pencil"
										aria-hidden="true"></i> Edit </a> <a href="#" class="betw"><i
										class="fa fa-trash" aria-hidden="true"></i> Delete </a>
								</div>
							</div>
							<div class="content">
								<div class="main">
									<h4 class="text-center">Skills</h4>
									<p class="text-center">Java, Python, and Back-End
										Development using Java, JSP, MySQL</p>
								</div>
							</div>
							<div class="footer">

								<div class="social-links text-center">
									<a href="https://www.facebook.com/foncyc" class="facebook"><i
										class="fa fa-facebook fa-fw"></i></a> <a
										href="https://github.com/foncyc" class="google"><i
										class="fa fa-github fa-fw"></i></a> <a
										href="https://www.linkedin.com/in/foncyc" class="twitter"><i
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
			<!-- end col sm 3 -->
			<!--         <div class="col-sm-1"></div> -->
			<div class="col-md-4 col-sm-6">
				<div class="card-container">
					<div class="card">
						<div class="front">
							<div class="cover">
								<img src="assets/images/rotating_card_thumb.png" />
							</div>
							<div class="user">
								<img class="img-circle"
									src="assets/images/rotating_card_profile2.png" />
							</div>
							<div class="content">
								<div class="main">
									<h3 class="name">Andrew Mike</h3>
									<p class="profession">Web Developer</p>
									<p class="text-center">
										"Lamborghini Mercy <br>Your chick she so thirsty <br>I'm
										in that two seat Lambo"
									</p>
								</div>
								<div class="footer">
									<button class="btn btn-simple" onclick="rotateCard(this)">
										<i class="fa fa-mail-forward"></i> Manual Rotation
									</button>
								</div>
							</div>
						</div>
						<!-- end front panel -->
						<div class="back">
							<div class="header">
								<h5 class="motto">"To be or not to be, this is my awesome
									motto!"</h5>
							</div>
							<div class="content">
								<div class="main">
									<h4 class="text-center">Job Description</h4>
									<p class="text-center">Web design, Adobe Photoshop, HTML5,
										CSS3, Corel and many others...</p>

									<div class="stats-container">
										<div class="stats">
											<h4>235</h4>
											<p>Followers</p>
										</div>
										<div class="stats">
											<h4>114</h4>
											<p>Following</p>
										</div>
										<div class="stats">
											<h4>35</h4>
											<p>Projects</p>
										</div>
									</div>

								</div>
							</div>
							<div class="footer">
								<button class="btn btn-simple" rel="tooltip" title="Flip Card"
									onclick="rotateCard(this)">
									<i class="fa fa-reply"></i> Back
								</button>
								<div class="social-links text-center">
									<a href="http://creative-tim.com" class="facebook"><i
										class="fa fa-facebook fa-fw"></i></a> <a
										href="http://creative-tim.com" class="google"><i
										class="fa fa-google-plus fa-fw"></i></a> <a
										href="http://creative-tim.com" class="twitter"><i
										class="fa fa-twitter fa-fw"></i></a>
								</div>
							</div>
						</div>
						<!-- end back panel -->
					</div>
					<!-- end card -->
				</div>
				<!-- end card-container -->
			</div>
			<!-- end col sm 3 -->
			<!--         <div class="col-sm-1"></div> -->
			<div class="col-md-4 col-sm-6">
				<div class="card-container">
					<div class="card">
						<div class="front">
							<div class="cover">
								<img src="assets/images/rotating_card_thumb3.png" />
							</div>
							<div class="user">
								<img class="img-circle"
									src="assets/images/rotating_card_profile.png" />
							</div>
							<div class="content">
								<div class="main">
									<h3 class="name">Inna Corman</h3>
									<p class="profession">Product Manager</p>

									<p class="text-center">"I'm the new Sinatra, and since I
										made it here I can make it anywhere, yeah, they love me
										everywhere"</p>
								</div>
								<div class="footer">
									<div class="rating">
										<i class="fa fa-mail-forward"></i> Auto Rotation
									</div>
								</div>
							</div>
						</div>
						<!-- end front panel -->
						<div class="back">
							<div class="header">
								<h5 class="motto">"To be or not to be, this is my awesome
									motto!"</h5>
							</div>
							<div class="content">
								<div class="main">
									<h4 class="text-center">Job Description</h4>
									<p class="text-center">Web design, Adobe Photoshop, HTML5,
										CSS3, Corel and many others...</p>

									<div class="stats-container">
										<div class="stats">
											<h4>235</h4>
											<p>Followers</p>
										</div>
										<div class="stats">
											<h4>114</h4>
											<p>Following</p>
										</div>
										<div class="stats">
											<h4>35</h4>
											<p>Projects</p>
										</div>
									</div>

								</div>
							</div>
							<div class="footer">
								<div class="social-links text-center">
									<a href="http://creative-tim.com" class="facebook"><i
										class="fa fa-facebook fa-fw"></i></a> <a
										href="http://creative-tim.com" class="google"><i
										class="fa fa-google-plus fa-fw"></i></a> <a
										href="http://creative-tim.com" class="twitter"><i
										class="fa fa-twitter fa-fw"></i></a>
								</div>
							</div>
						</div>
						<!-- end back panel -->
					</div>
					<!-- end card -->
				</div>
				<!-- end card-container -->
			</div>
			<!-- end col-sm-3 -->
		</div>
		<!-- end col-sm-10 -->
	</div>
	<!-- end row -->
	<div class="space-200"></div>
</div>

<%@ include file="partials/footer.jsp"%>
