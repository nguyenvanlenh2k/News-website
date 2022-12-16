<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kết quả</title>
</head>
<body>
	<section class="search first" style="padding-top: 218px;">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<aside>
						<h2 class="aside-title">Search</h2>
						<div class="aside-body">
							<p>Tìm kiếm với các từ khóa khác hoặc sử dụng bộ lọc để có kết quả chính xác hơn.</p>
							<form>
								<div class="form-group">
									<div class="input-group">
										<input type="text" name="q" class="form-control"
											placeholder="Type something ..." value="${requestScope.search}">
										<div class="input-group-btn">
											<button class="btn btn-primary">
												<i class="ion-search"></i>
											</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</aside>
					<aside>
						<h2 class="aside-title">Filter</h2>
						<div class="aside-body">
							<form class="checkbox-group">
								<div class="group-title">Date</div>
								<div class="form-group">
									<label><div class="iradio_square-red checked"
											style="position: relative;">
											<input type="radio" name="date" checked=""
												style="position: absolute; opacity: 0;">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0; cursor: pointer;"></ins>
										</div> Anytime</label>
								</div>
								<div class="form-group">
									<label><div class="iradio_square-red"
											style="position: relative;">
											<input type="radio" name="date"
												style="position: absolute; opacity: 0;">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0; cursor: pointer;"></ins>
										</div> Today</label>
								</div>
								<div class="form-group">
									<label><div class="iradio_square-red"
											style="position: relative;">
											<input type="radio" name="date"
												style="position: absolute; opacity: 0;">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0; cursor: pointer;"></ins>
										</div> Last Week</label>
								</div>
								<div class="form-group">
									<label><div class="iradio_square-red"
											style="position: relative;">
											<input type="radio" name="date"
												style="position: absolute; opacity: 0;">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0; cursor: pointer;"></ins>
										</div> Last Month</label>
								</div>
								<br>
								<div class="group-title">Danh mục</div>
								
								<c:forEach var ="cate" items ="${listCate }">
								<div class="form-group">
									<label><div class="icheckbox_square-red"
											style="position: relative;">
											<input type="checkbox" name="category"
												style="position: absolute; opacity: 0;">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0; cursor: pointer;"></ins>
										</div>  ${ cate.name} </label>
								</div>
</c:forEach>
							</form>
						</div>
					</aside>
				</div>
				<div class="col-md-9">
					<div class="nav-tabs-group">
						<ul class="nav-tabs-list">
							<li class="active"><a href="#">All</a></li>
							<li><a href="#">Latest</a></li>
							<li><a href="#">Popular</a></li>
							<li><a href="#">Trending</a></li>
							<li><a href="#">Videos</a></li>
						</ul>
						<div class="nav-tabs-right">
							<select class="form-control">
								<option>Limit</option>
								<option>10</option>
								<option>20</option>
								<option>50</option>
								<option>100</option>
							</select>
						</div>
					</div>
					<!-- <div class="search-result">Search results for keyword "hello"
						found in 5,200 posts.</div> -->
					<div class="row">
						<c:forEach var="item" items="${ResultSearch}">
							<article class="col-md-12 article-list">
								<div class="inner">
									<figure>
										<a href="<c:url value ='/Content?id=${item.getId()}' /> ">
											<img
											src="<c:url value ='/image/web/news/${item.getImage()}' />">
										</a>
									</figure>
									<div class="details">
										<div class="detail">
											<div class="category">
												<a href="#"> ${item.categoryId.name }</a>
											</div>
											<time><fmt:formatDate pattern="dd/MM/yyyy"
										value="${item.createdDate}" /></time>
										</div>
										<h1>
											<a href="<c:url value ='/Content?id=${item.getId()}' />">${item.getTitle() }</a>
										</h1>
										<p>${item.getShortDescription() }</p>
										<footer>
											<a href="#" class="love"><i
												class="ion-android-favorite-outline"></i>
												<div>273</div></a> <a class="btn btn-primary more"
												href="<c:url value ='/Content?id=${item.getId()}' /> ">
												<div>Chi tiết</div>
												<div>
													<i class="ion-ios-arrow-thin-right"></i>
												</div>
											</a>
										</footer>
									</div>
								</div>
							</article>

						</c:forEach>

					<!-- 	<div class="col-md-12 text-center">
							<ul class="pagination">
								<li class="prev"><a href="#"><i
										class="ion-ios-arrow-left"></i></a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">...</a></li>
								<li><a href="#">97</a></li>
								<li class="next"><a href="#"><i
										class="ion-ios-arrow-right"></i></a></li>
							</ul>
							<div class="pagination-help-text">Showing 8 results of 776
								— Page 1</div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>