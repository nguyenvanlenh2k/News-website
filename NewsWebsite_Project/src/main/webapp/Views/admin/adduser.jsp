<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm tài khoản người dùng</title>
</head>
<body>

	<main class="app-content">
		<div class="app-title">
			<ul class="app-breadcrumb breadcrumb">
				<li class="breadcrumb-item">Danh sách tài khoản</li>
				<li class="breadcrumb-item"><a href="#">Thêm tài khoản</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col-md-12">

				<div class="tile">

					<h3 class="tile-title">Tạo tài khoản</h3>
					<div class="tile-body">
						<div class="row element-button">
							<div class="col-sm-2">
								<a class="btn btn-add btn-sm" data-toggle="modal"
									data-target="#exampleModalCenter"><b><i
										class="fas fa-check"></i>${Success}</b></a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm pdf-file" type="button"
									title="In" onclick="myFunction(this)"><i
									class="fas fa-times-circle"></i> ${Fail}</a>
							</div>

						</div>
						<form class="row" action="admin-adduser" method="post">

							<div class="form-group col-md-4">
								<label class="control-label">Họ và tên</label> <input
									class="form-control" type="text"  name = "fullname">
							</div>
							<div class="form-group col-md-4">
								<label class="control-label">Địa chỉ email</label> <input
									class="form-control" type="email" name = "email">
							</div>
							<div class="form-group col-md-4">
								<label class="control-label">Tên đăng nhập</label> <input
									class="form-control" type="text" required name = "username">
							</div>
							<div class="form-group  col-md-4">
								<label class="control-label">Mật khẩu</label> <input
									class="form-control" type="text" required name ="password">
							</div>

							<div class="form-group col-md-3">
								<label class="control-label">Cấp quyền</label>
								 <select
									class="form-control" name ="role" id="exampleSelect2" required>
									<option  value ="author">Tác giả</option>
									<option value ="user">Người dùng</option>
								</select>
							</div>
							<div class="form-group col-md-12">
								

							</div>

							<button class="btn btn-save" type="submit">Lưu lại</button>
							<a class="btn btn-cancel" href="#">Hủy bỏ</a>
						</form>
					</div>
				</div>
	</main>

</body>
</html>