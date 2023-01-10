<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý chủ đề bài viết</title>
</head>
<body>
	<main class="app-content">
		<div class="app-title">
			<ul class="app-breadcrumb breadcrumb side">
				<li class="breadcrumb-item active"><a href="#"><b>Danh
							sách thể loại</b></a></li>
			</ul>
			<div id="clock">
				<span class="date"> <fmt:timeZone value="GMT + 7:00">
						<fmt:formatDate value="${now}" type="date" dateStyle="full" />
					</fmt:timeZone></span>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div class="tile-body">
						<div class="row element-button">
							<div class="col-sm-2">

								<a class="btn btn-add btn-sm" href="admin-addcategory"
									title="Thêm"><i class="fas fa-plus"></i> Thêm chủ đề mới</a>
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
										class="table table-hover table-bordered dataTable no-footer"
										id="sampleTable" role="grid"
										aria-describedby="sampleTable_info">
										<thead>
											<tr role="row">
												<th width="10" class="sorting_asc" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label=": activate to sort column descending"
													style="width: 13px;"><input type="checkbox" id="all"></th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="Mã sản phẩm: activate to sort column ascending"
													style="width: 97.1875px;">Mã thể loại</th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="Tên sản phẩm: activate to sort column ascending"
													style="width: 214.5px;">Tên thể loại</th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="Tên sản phẩm: activate to sort column ascending"
													style="width: 214.5px;">Action url</th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="Chức năng: activate to sort column ascending"
													style="width: 80.3594px;">Chức năng</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="cate" items="${listCate}">
											<tr role="row" class="odd">
												<td width="10" class="sorting_1"><input type="checkbox"
													name="check1" value="1"></td>
												<td>#${cate.id }</td>
												<td>${cate.name }</td>
												<td>${cate.url_id }</td>
												<td><button class="btn btn-primary btn-sm trash"
														type="button" title="Xóa" onclick="myFunction(this)">
														<i class="fas fa-trash-alt"></i>
													</button>
													<button class="btn btn-primary btn-sm edit" type="button"
														title="Sửa" id="show-emp" data-toggle="modal"
														data-target="#ModalUP">
														<i class="fas fa-edit"></i>
													</button></td>
											</tr></c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 col-md-5">
									<div class="dataTables_info" id="sampleTable_info"
										role="status" aria-live="polite">Hiện 1 đến 10 của 16
										danh mục</div>
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
											<li class="paginate_button page-item "><a href="#"
												aria-controls="sampleTable" data-dt-idx="2" tabindex="0"
												class="page-link">2</a></li>
											<li class="paginate_button page-item next"
												id="sampleTable_next"><a href="#"
												aria-controls="sampleTable" data-dt-idx="3" tabindex="0"
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