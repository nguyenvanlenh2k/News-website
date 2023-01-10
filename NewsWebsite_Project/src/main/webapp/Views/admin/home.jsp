<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bảng điều khiển</title>
</head>
<body onload="time()" class="app sidebar-mini rtl">
	<main class="app-content">

		<div class="row">
			<div class="col-md-12">
				<div class="app-title">
					<ul class="app-breadcrumb breadcrumb">
						<li class="breadcrumb-item"><a href="#"><b>Bảng điều
									khiển</b></a></li>
					</ul>
					<div id="clock">
						<span class="date"> <fmt:timeZone value="GMT + 7:00">
								<fmt:formatDate value="${now}" type="date" dateStyle="full" />
							</fmt:timeZone>
						</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<!--Left-->
			<div class="col-md-12 col-lg-6">
				<div class="row">
					<!-- col-6 -->
					<div class="col-md-6">
						<div class="widget-small primary coloured-icon">
							<i class="icon bx bxs-user-account fa-3x"></i>
							<div class="info">
								<h4>Tổng tài khoản</h4>
								<p>
									<b>${Admin_Quantily.get(2) } tài khoản</b>
								</p>
								<p class="info-tong">Tổng số tài khoản được quản lý.</p>
							</div>
						</div>
					</div>
					<!-- col-6 -->
					<div class="col-md-6">
						<div class="widget-small info coloured-icon">
							<i class="icon bx bxs-data fa-3x"></i>
							<div class="info">
								<h4>Tổng số chủ đề</h4>
								<p>
									<b>${Admin_Quantily.get(1) } chủ đề</b>
								</p>
								<p class="info-tong">Tổng số bài viết được được quản lý.</p>
							</div>
						</div>
					</div>
					<!-- col-6 -->
					<div class="col-md-6">
						<div class="widget-small warning coloured-icon">
							<i class="icon bx bxs-shopping-bags fa-3x"></i>
							<div class="info">
								<h4>Tổng bài viết</h4>
								<p>
									<b>${Admin_Quantily.get(0) } bài viết</b>
								</p>
								<p class="info-tong">Tổng số bài viết được quản lý.</p>
							</div>
						</div>
					</div>
					<!-- col-6 -->

					<!-- col-12 -->

					<!-- / col-12 -->
					<!-- col-12 -->
					<div class="col-md-12">
						<div class="tile">
							<h3 class="tile-title">Tài khoản mới</h3>
							<div>
								<table class="table table-hover">
									<thead>
										<tr>
											<th>ID</th>
											<th>Tên khách hàng</th>
											<th>E-mail</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var ="user" items = "${Admin_ListUser}">
									<c:choose>
									<%--  <c:if test=" ${ user.roleId.name == 'user'}"> --%>
									<c:when test="${ user.roleId.name == 'user'}">
										<tr>
											<td>#${user.id}</td>
											<td>${user.fullName }</td>
											<td>${ user.email}</td>
										</tr></c:when>
									<%-- </c:if> --%></c:choose>
									</c:forEach>
									</tbody>
								</table>
							</div>

						</div>
					</div>
					<!-- / col-12 -->
				</div>
			</div>
			<!--END left-->
			<!--Right-->
			<div class="col-md-12 col-lg-6">
				<div class="row">
					<div class="col-md-12">
						<div class="tile">
							<h3 class="tile-title">Dữ liệu 6 tháng đầu vào</h3>
							<div class="embed-responsive embed-responsive-16by9">
								<canvas class="embed-responsive-item" id="lineChartDemo"
									width="475" height="267" style="width: 475px; height: 267px;"></canvas>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="tile">
							<h3 class="tile-title">Thống kê 6 tháng doanh thu</h3>
							<div class="embed-responsive embed-responsive-16by9">
								<canvas class="embed-responsive-item" id="barChartDemo"
									width="475" height="267" style="width: 475px; height: 267px;"></canvas>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!--END right-->
		</div>


		<!--  <div class="text-center" style="font-size: 13px">
      <p><b>Copyright
          <script type="text/javascript">
            document.write(new Date().getFullYear());
          </script>2022 Phần mềm quản lý bán hàng | Dev By Trường
        </b></p>
    </div> -->
	</main>
</body>
</html>