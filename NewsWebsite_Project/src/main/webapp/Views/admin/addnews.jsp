<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm bài viết</title>

</head>
<body>
	<main class="app-content">
		<div class="app-title">
			<ul class="app-breadcrumb breadcrumb">
				<li class="breadcrumb-item">Danh sách bài viết</li>
				<li class="breadcrumb-item"><a href="#">Thêm bài viết</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<h3 class="tile-title">Tạo mới bài viết</h3>
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
						<form class="row" action="admin-addnews-author" method="post">

							<div class="form-group col-md-3">
								<label class="control-label">Tiêu đề</label> <input
									class="form-control" type="text" name="title">
							</div>
							<div class="form-group col-md-3">
								<label class="control-label">Mô tả ngắn</label> <input
									class="form-control" type="text" name="description">
							</div>

							<div class="form-group col-md-3">
								<label for="exampleSelect1" class="control-label">Chủ đề</label>
								<select class="form-control" id="exampleSelect1" name="category">
									<c:forEach var="cate" items="${listCate}">
										<option value="${cate.id}">${cate.name}</option>
									</c:forEach>

								</select>
							</div>
							<div class="form-group col-md-3 ">
								<label for="exampleSelect1" class="control-label">Tác
									giả</label> <select class="form-control" name="author"
									id="exampleSelect1">
									<option value="1">Nguyễn Văn Lênh</option>
									<option value="2">Nguyễn Tấn Kiệt</option>
									<option value="3">Hà Văn Nhân</option>
									<option value="4">Mi Sa</option>
								</select>
							</div>



							<div class="form-group col-md-12">
								<label class="control-label">Nội dung bài viết</label>
								<textarea class="form-control" id="content" name="content"></textarea>

							</div>
							<button class="btn btn-save" type="submit">Lưu lại</button>
							<a class="btn btn-cancel" href="#">Hủy bỏ</a>
						</form>



						<form action="upload" method="post" enctype="multipart/form-data">

							<div class="form-group col-md-12">
								<label class="control-label">Ảnh bài báo</label>
								<div id="myfileupload">
									<input type="file" id="uploadfile" name="file" />
								</div>
								<div id="thumbbox">
									<img height="300" width="300" alt="Thumb image" id="thumbimage"
										style="display: none" /> <a class="removeimg"
										href="javascript:"></a>
								</div>
								<div id="boxchoice">
									<button type="submit" class="Choicefile">
										<i class='bx bx-upload'></i>
									</button>
									<p style="clear: both"></p>
								</div>
							</div>

						</form>
					</div>
				</div>
	</main>
	
	<script type="text/javascript">
		CKEDITOR.replace( 'content');
	</script>

</body>
</html>