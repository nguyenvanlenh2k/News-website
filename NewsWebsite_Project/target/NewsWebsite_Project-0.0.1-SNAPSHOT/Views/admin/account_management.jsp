<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<span class="date"> Thứ Sáu, 18/11/2022 - 22 giờ 18 phút 55
					giây</span>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div class="tile-body">

						<div class="row element-button">
							<div class="col-sm-2">

								<a class="btn btn-add btn-sm" href="form-add-nhan-vien.html"
									title="Thêm"><i class="fas fa-plus"></i> Tạo mới nhân viên</a>
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
												<th width="150" class="sorting" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-label="Họ và tên: activate to sort column ascending"
													style="width: 118.312px;">Họ và tên</th>
												<th width="20" class="sorting" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-label="Ảnh thẻ: activate to sort column ascending"
													style="width: 50px;">Ảnh thẻ</th>
												<th width="300" class="sorting" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-label="Địa chỉ: activate to sort column ascending"
													style="width: 222.484px;">Tên đăng nhập</th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="Ngày sinh: activate to sort column ascending"
													style="width: 74.4375px;">Ngày sinh</th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="Giới tính: activate to sort column ascending"
													style="width: 29.875px;">Giới tính</th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="SĐT: activate to sort column ascending"
													style="width: 78.625px;">SĐT</th>
												<th class="sorting" tabindex="0" aria-controls="sampleTable"
													rowspan="1" colspan="1"
													aria-label="Chức vụ: activate to sort column ascending"
													style="width: 32.8438px;">Chức vụ</th>
												<th width="100" class="sorting" tabindex="0"
													aria-controls="sampleTable" rowspan="1" colspan="1"
													aria-label="Tính năng: activate to sort column ascending"
													style="width: 79.8438px;">Tính năng</th>
											</tr>
										</thead>
										<tbody>

											<tr role="row" class="odd">
												<td width="10" class="sorting_1"><input type="checkbox"
													name="check1" value="1"></td>
												<td>#CD12837</td>
												<td>Hồ Thị Thanh Ngân</td>
												<td><img class="img-card-person"
													src="/img-anhthe/1.jpg" alt=""></td>
												<td>155-157 Trần Quốc Thảo, Quận 3, Hồ Chí Minh</td>
												<td>12/02/1999</td>
												<td>Nữ</td>
												<td>0926737168</td>
												<td>Bán hàng</td>
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
											</tr>
											<tr role="row" class="even">
												<td width="10" class="sorting_1"><input type="checkbox"
													name="check2" value="2"></td>
												<td>#SX22837</td>
												<td>Trần Khả Ái</td>
												<td><img class="img-card-person"
													src="/img-anhthe/2.jpg" alt=""></td>
												<td>6 Nguyễn Lương Bằng, Tân Phú, Quận 7, Hồ Chí Minh</td>
												<td>22/12/1999</td>
												<td>Nữ</td>
												<td>0931342432</td>
												<td>Bán hàng</td>
												<td><button class="btn btn-primary btn-sm trash"
														type="button" title="Xóa" onclick="myFunction(this)">
														<i class="fas fa-trash-alt"></i>
													</button>
													<button class="btn btn-primary btn-sm edit" type="button"
														title="Sửa" id="show-emp" data-toggle="modal"
														data-target="#ModalUP">
														<i class="fas fa-edit"></i>
													</button></td>
											</tr>
											<tr role="row" class="odd">
												<td width="10" class="sorting_1"><input type="checkbox"
													name="check3" value="3"></td>
												<td>#LO2871</td>
												<td>Phạm Thu Cúc</td>
												<td><img class="img-card-person"
													src="/img-anhthe/3.jpg" alt=""></td>
												<td>Số 3 Hòa Bình, Phường 3, Quận 11, Hồ Chí Minh</td>
												<td>02/06/1998</td>
												<td>Nữ</td>
												<td>0931491997</td>
												<td>Thu ngân</td>
												<td><button class="btn btn-primary btn-sm trash"
														type="button" title="Xóa" onclick="myFunction()">
														<i class="fas fa-trash-alt"></i>
													</button>
													<button class="btn btn-primary btn-sm edit" type="button"
														title="Sửa" id="show-emp" data-toggle="modal"
														data-target="#ModalUP">
														<i class="fas fa-edit"></i>
													</button></td>
											</tr>
											<tr role="row" class="even">
												<td width="10" class="sorting_1"><input type="checkbox"></td>
												<td>#SR28746</td>
												<td>Trần Anh Khoa</td>
												<td><img class="img-card-person"
													src="/img-anhthe/4.jpg" alt=""></td>
												<td>19 Đường Nguyễn Hữu Thọ, Tân Hưng, Quận 7, Hồ Chí
													Minh</td>
												<td>18/02/1995</td>
												<td>Nam</td>
												<td>0916706633</td>
												<td>Tư vấn</td>
												<td><button class="btn btn-primary btn-sm trash"
														type="button" title="Xóa" onclick="myFunction()">
														<i class="fas fa-trash-alt"></i>
													</button>
													<button class="btn btn-primary btn-sm edit" type="button"
														title="Sửa" id="show-emp" data-toggle="modal"
														data-target="#ModalUP">
														<i class="fas fa-edit"></i>
													</button></td>
											</tr>
											<tr role="row" class="odd">
												<td width="10" class="sorting_1"><input type="checkbox"></td>
												<td>#KJS276</td>
												<td>Nguyễn Thành Nhân</td>
												<td><img class="img-card-person"
													src="/img-anhthe/5.jpg" alt=""></td>
												<td>Số 13, Tân Thuận Đông, Quận 7, Hồ Chí Minh</td>
												<td>10/03/1996</td>
												<td>Nam</td>
												<td>0971038066</td>
												<td>Bảo trì</td>
												<td><button class="btn btn-primary btn-sm trash"
														type="button" title="Xóa" onclick="myFunction()">
														<i class="fas fa-trash-alt"></i>
													</button>
													<button class="btn btn-primary btn-sm edit" type="button"
														title="Sửa" id="show-emp" data-toggle="modal"
														data-target="#ModalUP">
														<i class="fas fa-edit"></i>
													</button></td>
											</tr>
											<tr role="row" class="even">
												<td width="10" class="sorting_1"><input type="checkbox"></td>
												<td>#BS76228</td>
												<td>Nguyễn Đặng Trọng Nhân</td>
												<td><img class="img-card-person"
													src="/img-anhthe/6.jpg" alt=""></td>
												<td>59C Nguyễn Đình Chiểu, Quận 3, Hồ Chí Minh</td>
												<td>23/07/1996</td>
												<td>Nam</td>
												<td>0846881155</td>
												<td>Dịch vụ</td>
												<td><button class="btn btn-primary btn-sm trash"
														type="button" title="Xóa" onclick="myFunction()">
														<i class="fas fa-trash-alt"></i>
													</button>
													<button class="btn btn-primary btn-sm edit" type="button"
														title="Sửa" id="show-emp" data-toggle="modal"
														data-target="#ModalUP">
														<i class="fas fa-edit"></i>
													</button></td>
											</tr>
											<tr role="row" class="odd">
												<td width="10" class="sorting_1"><input type="checkbox"></td>
												<td>#YUI21376</td>
												<td>Nguyễn Thị Mai</td>
												<td><img class="img-card-person"
													src="/img-anhthe/4.jpg" alt=""></td>
												<td>Đường Số 3, Tân Tạo A, Bình Tân, Hồ Chí Minh</td>
												<td>09/12/2000</td>
												<td>Nữ</td>
												<td>0836333037</td>
												<td>Tư vấn</td>
												<td><button class="btn btn-primary btn-sm trash"
														title="Xóa" onclick="myFunction()">
														<i class="fas fa-trash-alt"></i>
													</button>
													<button class="btn btn-primary btn-sm edit" title="Sửa"
														id="show-emp" data-toggle="modal" data-target="#ModalUP">
														<i class="fas fa-edit"></i>
													</button></td>
											</tr>
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