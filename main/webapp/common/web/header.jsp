<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="primary">
			<div class="firstbar">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-12">
							<div class="brand">
								<a href="index.html">
								VnExpress
									<%-- <img src="<c:url value='/template/web/images/logo.png" alt="Magz Logo'/>"> --%>
								</a>
							</div>						
						</div>
						<div class="col-md-6 col-sm-12">
							<form class="search" autocomplete="off">
								<div class="form-group">
									<div class="input-group">
										<input type="text" name="q" class="form-control" placeholder="Type something here">									
										<div class="input-group-btn">
											<button class="btn btn-primary"><i class="ion-search"></i></button>
										</div>
									</div>
								</div>
								<!-- <div class="help-block">
									<div>Popular:</div>
									<ul>
										<li><a href="#">HTML5</a></li>
										<li><a href="#">CSS3</a></li>
										<li><a href="#">Bootstrap 3</a></li>
										<li><a href="#">jQuery</a></li>
										<li><a href="#">AnguarJS</a></li>
									</ul>
								</div> -->
							</form>								
						</div>
						<div class="col-md-3 col-sm-12 text-right">
							<ul class="nav-icons">
								<li><a href="<c:url value = 'Register'/>"><i class="ion-person-add"></i><div>Register</div></a></li>
								<li><a href="<c:url value = 'Login'/>"><i class="ion-person"></i><div>Login</div></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Start nav -->
			<nav class="menu">
				<div class="container">
					<div class="brand">
						<a href="#">
						VnExpress
							<%-- <img src="<c:url value = 'template/web/images/logo.png'/>" alt="Magz Logo"> --%>
						</a>
					</div>
					<div class="mobile-toggle">
						<a href="#" data-toggle="menu" data-target="#menu-list"><i class="ion-navicon-round"></i></a>
					</div>
					<div class="mobile-toggle">
						<a href="#" data-toggle="sidebar" data-target="#sidebar"><i class="ion-ios-arrow-left"></i></a>
					</div>
					<div id="menu-list">
						<ul class="nav-list">
							<li class="for-tablet nav-title"><a>Menu</a></li>
							<li class="for-tablet"><a href="<c:url value = '/Login'/>">Login</a></li>
							<li class="for-tablet"><a href="<c:url value = '/Register'/>">Register</a></li>
							<li><a href="<c:url value = '/Home'/>"><i class="ion-home custom-home"></i></a></li>
							<li><a href="<c:url value = '/Category/thoi-su'/>">Thời sự</a></li>
							<li><a href="category.html">Góc nhìn</a></li>
							<li><a href="category.html">Thế giới</a></li>
							<li><a href="<c:url value = '/Category/the-thao'/>">Thể Thao</a></li>
							<li><a href="category.html">Pháp luật</a></li>
							<li><a href="category.html">Giáo dục</a></li>
							<li><a href="category.html">Sức khỏe</a></li>
							<li><a href="category.html">Khoa học</a></li>
							<li><a href="category.html">Đời sống</a></li>
							<li><a href="category.html">Xe</a></li>
							<!-- <li><a href="category.html">Du lịch</a></li> -->
							
						</ul>
					</div>
				</div>
			</nav>
			<!-- End nav -->
		</header>