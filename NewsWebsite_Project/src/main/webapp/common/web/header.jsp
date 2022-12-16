<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<jsp:useBean id="now" class="java.util.Date" />
<header class="primary">
	<div class="firstbar">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-12">
					<div class="brand">
						<a href="Home"> VnExpress </a>
					</div>
				</div>
				<div class="col-md-6 col-sm-12">
					<form class="search" method="post" action="Search"
						accept-charset="UTF-8">
						<div class="form-group">
							<div class="input-group">
								<input type="text" name="search" class="form-control"
									placeholder="Tìm kiếm">
								<!-- <input type = "submit" value ="Tìm kiếm">		 -->
								<div class="input-group-btn">
									<button class="btn btn-primary">
										<i class="ion-search"></i>
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="col-md-3 col-sm-12 text-right">
					<ul class="nav-icons">
						<%-- <li><a href="<c:url value = '/account-register'/>"><i class="ion-person-add"></i><div>Đăng kí</div></a></li> --%>
						<li class="date-time"><fmt:timeZone value="GMT + 7:00">
								<fmt:formatDate value="${now}" type="date" dateStyle="full" />
							</fmt:timeZone></li>

						<c:choose>
							<c:when test="${ empty sessionScope.USER}">
								<li><a href="account-login"><i class="ion-person"></i><div>Đăng nhập</div></a></li>
							</c:when>
							<c:otherwise>
								<li class="parent_logout"><a href="Profile"><i
										class="ion-person"></i> 
									</a>
									<div class="box_item_logout">
										<a href="account-logout" class="item_logout"> <i
											class="ion-log-out"></i>
											<div>Đăng xuất</div></a>
									</div></li>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- Start nav -->
	<nav class="menu">
		<div class="container">
			<div class="brand">
				<a href="#"> VnExpress <%-- <img src="<c:url value = 'template/web/images/logo.png'/>" alt="Magz Logo"> --%>
				</a>
			</div>
			<div class="mobile-toggle">
				<a href="#" data-toggle="menu" data-target="#menu-list"><i
					class="ion-navicon-round"></i></a>
			</div>
			<div class="mobile-toggle">
				<a href="#" data-toggle="sidebar" data-target="#sidebar"><i
					class="ion-ios-arrow-left"></i></a>
			</div>
			<div id="menu-list">
				<ul class="nav-list">
					<%-- <li class="for-tablet nav-title"><a>Menu</a></li>
					<li class="for-tablet"><a href="<c:url value = '/Login'/>">Đăng
							nhập</a></li>
					<li class="for-tablet"><a href="<c:url value = '/Register'/>">Đăng
							kí</a></li> --%>
					<li><a href="<c:url value = '/Home'/>"><i
							class="ion-home custom-home"></i></a></li>
					<c:forEach var="cate" items="${listCate}">
						<li><a
							href="<c:url value = '/${cate.getUrl_id()}?url_id=${cate.getUrl_id()}'/>">${cate.getName()}</a></li>
					</c:forEach>

				</ul>
			</div>
		</div>
	</nav>
	<!-- End nav -->
</header>