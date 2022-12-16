<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng kí</title>
</head>
<body>
<section class="login grey">
			<div class="container">
				<div class="box-wrapper">				
					<div class="box box-border">
						<div class="box-body">
							<h4>Đăng kí</h4>
							<form method="post" action ="account-register">
								<div class="form-group">
									<label>Họ tên</label>
									<input type="text" name="name" class="form-control">
								</div>
								<div class="form-group">
									<label>Email</label>
									<input type="email" name="email" class="form-control">
								</div>
								<div class="form-group">
									<label>Tên tài khoản</label>
									<input type="text" name="username" class="form-control">
								</div>
								<div class="form-group">
									<label class="fw">Mật khẩu</label>
									<input type="password" name="password" class="form-control">
								</div>
								<div class="form-group text-right">
									<button class="btn btn-primary btn-block">Đăng kí</button>
								</div>
								<div class="form-group text-center">
									<span class="text-muted">Bạn đã có tài khoản?</span> <a href="<c:url value = 'account-login'/>">Đăng nhập</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>

</body>
</html>