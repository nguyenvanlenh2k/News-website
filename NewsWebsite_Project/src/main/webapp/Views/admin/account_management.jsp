<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp"%>
	<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý tài khoản</title>
</head>
<body>
	<main class="app-content">
		<div class="app-title">
			<ul class="app-breadcrumb breadcrumb side">
				<li class="breadcrumb-item active"><a href="#"><b>Danh
							sách tài khoản</b></a></li>
			</ul>
			<div id="clock">
				<span class="date"> <fmt:timeZone value="GMT + 7:00">
						   <fmt:formatDate value="${now}" type="date" 
						         dateStyle="full" />
						</fmt:timeZone></span>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div class="tile-body">

						<div class="row element-button">
							<div class="col-sm-2">

								<a class="btn btn-add btn-sm" href="admin-adduser"
									title="Thêm"><i class="fas fa-plus"></i> Thêm tài khoản</a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm nhap-tu-file" type="button"
									title="Nhập" onclick="myFunction(this)"><i
									class="fas fa-file-upload"></i> Tải từ file</a>
							</div>

							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm print-file" type="button"
									title="In" onclick="myApp.printTable()"><i
									class="fas fa-print"></i> In dữ liệu</a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm print-file js-textareacopybtn"
									type="button" title="Sao chép"><i class="fas fa-copy"></i>
									Sao chép</a>
							</div>

							<div class="col-sm-2">
								<a class="btn btn-excel btn-sm" href="" title="In"><i
									class="fas fa-file-excel"></i> Xuất Excel</a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm pdf-file" type="button"
									title="In" onclick="myFunction(this)"><i
									class="fas fa-file-pdf"></i> Xuất PDF</a>
							</div>
							<div class="col-sm-2">
								<a class="btn btn-delete btn-sm" type="button" title="Xóa"
									onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
									Xóa tất cả </a>
							</div>
						</div>
						<div id="sampleTable_wrapper"
							class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
							<div class="row">
								<div class="col-sm-12 col-md-6">
									<div class="dataTables_length" id="sampleTable_length">
										<label>Hiện <select name="sampleTable_length"
											aria-controls="sampleTable"
											class="form-control form-control-sm"><option
													value="10">10</option>
												<option value="25">25</option>
												<option value="50">50</option>
												<option value="100">100</option></select> danh mục
										</label>
									</div>
								</div>
								<div class="col-sm-12 col-md-6">
									<div id="sampleTable_filter" class="dataTables_filter">
										<label>Tìm kiếm:<input type="search"
											class="form-control form-control-sm" placeholder=""
											aria-controls="sampleTable"></label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<table
										class="table table-hover table-bordered js-copytextarea dataTable no-footer"
										cellpadding="0" cellspacing="0" border="0" id="sampleTable"
										role="grid" aria-describedby="sampleTable_info">
										<thead>
											<tr role="row">
												<th width="10" class="sorting_asc" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label=": activate to sort column descending"
													style="width: 13px;"><input type="checkbox" id="all"></th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="ID nhân viên: activate to sort column ascending"
													style="width: 68.5781px;">ID tài khoản</th>
												<th width="200" class="sorting" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-label="Họ và tên: activate to sort column ascending"
													style="width: 150px;">Họ và tên</th>
												
												<th width="150" class="sorting" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-label="Địa chỉ: activate to sort column ascending"
													style="width: 150px;">Tên đăng nhập</th>
												<th width="100" class="sorting" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-label="Địa chỉ: activate to sort column ascending"
													style="width: 150px;">Mật khẩu</th>
												<th width="100" class="sorting" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-label="Địa chỉ: activate to sort column ascending"
													style="width: 50px;">Tình trạng</th>
												<th width="300" class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="Ngày sinh: activate to sort column ascending"
													style="width: 90px;">E-mail</th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="Chức vụ: activate to sort column ascending"
													style="width: 32.8438px;">Quyền</th>
												<th width="50" class="sorting" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-label="Tính năng: activate to sort column ascending"
													style="width: 79.8438px;">Tính năng</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var = "user" items = "${Admin_ListUser}">
										<c:choose>
										<c:when test="${user.roleId.name != 'admin' }">
											<tr role="row" class="odd">
												<td width="10" class="sorting_1"><input type="checkbox"
													name="check1" value="1"></td>
												<td>#${user.id}</td>
												<td>${user.fullName }</td>
												<td>${ user.userName}</td>
												<td>${ user.password}</td>
												<c:choose>
											        <c:when test="${user.status == 1 }">
												<td><span class="badge bg-success">Hoạt động</span></td>
											        </c:when>
											        <c:otherwise>
												<td><span class="badge bg-danger">Đã khóa</span></td>
											        </c:otherwise>
											    </c:choose>
												<td>${ user.email}</td>
												<td>${ user.roleId.description}</td>
											
												<td class="table-td-center"><button
														class="btn btn-primary btn-sm trash" type="button"
														title="Xóa" onclick="myFunction(this)">
														<i class="fas fa-trash-alt"></i>
													</button>
													<button class="btn btn-primary btn-sm edit" type="button"
														title="Sửa" id="show-emp" data-toggle="modal"
														data-target="#ModalUP">
														<i class="fas fa-edit"></i>
													</button></td>
											</tr></c:when>
											</c:choose>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 col-md-5">
									<div class="dataTables_info" id="sampleTable_info"
										role="status" aria-live="polite">Hiện 1 đến 7 của 7 danh
										mục</div>
								</div>
								<div class="col-sm-12 col-md-7">
									<div class="dataTables_paginate paging_simple_numbers"
										id="sampleTable_paginate">
										<ul class="pagination">
											<li class="paginate_button page-item previous disabled"
												id="sampleTable_previous"><a href="#"
												aria-controls="sampleTable" data-dt-idx="0" tabindex="0"
												class="page-link">Lùi</a></li>
											<li class="paginate_button page-item active"><a href="#"
												aria-controls="sampleTable" data-dt-idx="1" tabindex="0"
												class="page-link">1</a></li>
											<li class="paginate_button page-item next disabled"
												id="sampleTable_next"><a href="#"
												aria-controls="sampleTable" data-dt-idx="2" tabindex="0"
												class="page-link">Tiếp</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>