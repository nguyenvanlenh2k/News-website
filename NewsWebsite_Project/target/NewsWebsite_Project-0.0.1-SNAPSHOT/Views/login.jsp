<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>

<section class="login grey">
			<div class="container">
				<div class="box-wrapper">				
					<div class="box box-border">
						<div class="box-body">
							<h4>Đăng nhập</h4>
							<form method = "Post" action ="account-login">
								<div class="form-group text-center">
									<span class="text-muted" style ="color: red"> ${AccoutIsBlock }</span>
								</div>
								<div class="form-group text-center">
									<span class="text-muted"style ="color: red"> ${AccoutNotExists }</span>
								</div>
								<div class="form-group">
									<label>Tên tài khoản</label>
									<input type="text" name="username" class="form-control">
								</div>
								<div class="form-group">
									<label class="fw">Mật khẩu
										<a href="account-forgot" class="pull-right">Quên mật khẩu?</a>
									</label>
									<input type="password" name="password" class="form-control">
								</div>
								<div class="form-group text-right">
									<button class="btn btn-primary btn-block">Đăng nhập</button>
								</div>
								<div class="form-group text-center">
									<span class="text-muted"> Bạn chưa có tài khoản?</span> <a href="account-register">Create one</a>
								</div>
								<div class="title-line">
									hoặc
								</div>
              	<a href="#" class="btn btn-social btn-block facebook"><i class="ion-social-facebook"></i> Login with Facebook</a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
</body>
</html>