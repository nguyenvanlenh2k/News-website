<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title><dec:title default="Trang chủ" /></title>
<!-- css -->
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/bootstrap/bootstrap.min.css' />" />
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/ionicons/css/ionicons.min.css' />" />
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/toast/jquery.toast.min.css' />" />
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/owlcarousel/dist/assets/owl.carousel.min.css' />" />
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/owlcarousel/dist/assets/owl.theme.default.min.css' />" />
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/magnific-popup/dist/magnific-popup.css' />" />
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/sweetalert/dist/sweetalert.css' />" />
<link href="<c:url value='/template/web/css/main.css' />"
	rel="stylesheet" />
<link rel="stylesheet"href="<c:url value='/template/web/css/skins/all.css' />" />
<link rel="stylesheet"href="<c:url value='/template/web/css/setting.css' />" />

</head>
<body>
	<!-- header -->
	 <%@ include file="/common/web/header.jsp"%>
	<!-- header -->
	<dec:body />
	<!-- footer -->
	<%@ include file="/common/web/footer.jsp"%>
	<!-- footer -->

	<script src="<c:url value='/template/web/js/jquery.js' />"></script>
	<script src="<c:url value='/template/web/js/jquery.migrate.js' />"></script>
	<script
		src="<c:url value='/template/web/scripts/bootstrap/bootstrap.min.js' />"></script>
	<script>
		var $target_end = $(".best-of-the-week");
	</script>
	<script
		src="<c:url value='/template/web/scripts/jquery-number/jquery.number.min.js' />"></script>
	<script
		src="<c:url value='/template/web/scripts/owlcarousel/dist/owl.carousel.min.js' />"></script>
	<script
		src="<c:url value='/template/web/scripts/magnific-popup/dist/jquery.magnific-popup.min.js' />"></script>
	<script
		src="<c:url value='/template/web/scripts/easescroll/jquery.easeScroll.js' />"></script>
	<script
		src="<c:url value='/template/web/scripts/sweetalert/dist/sweetalert.min.js' />"></script>
	<script
		src="<c:url value='/template/web/scripts/toast/jquery.toast.min.js' />"></script>
	<script src="<c:url value='/template/web/js/demo.js' />"></script>
	<script src="<c:url value='/template/web/js/e-magz.js' />"></script>

</body>
</html>