<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quên mật khẩu</title>
</head>
<body>
<section class="login grey" style="padding-top: 218px;">
			<div class="container">
				<div class="box-wrapper">				
					<div class="box box-border">
						<div class="box-body">
							<h4>Quên mật khẩu</h4>
							<form method="post" action ="account-forgot">
							<div class="form-group text-center">
									<span class="text-muted" style ="color: red"> ${Message }</span>
								</div>
								<div class="form-group">
									<label>Tên tài khoản</label>
									<input type="text" name="username" class="form-control" required>
								</div>
								<div class="form-group">
									<label>Email</label>
									<input type="email" name="email" class="form-control" required>
								</div>
								<div class="form-group text-right">
									<button class="btn btn-primary btn-block">Quên mật khẩu</button>
								</div>
								<div class="form-group text-center">
									<span class="text-muted">Quay lại đăng nhập?</span> <a href="account-login">Đăng nhập</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
</body>
</html>