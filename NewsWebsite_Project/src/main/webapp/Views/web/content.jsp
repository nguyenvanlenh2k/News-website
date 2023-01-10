<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${newsDetail.title}</title>
</head>
<body>

	<section class="single">
		<div class="container">
			<div class="row">
				<div class="col-md-4 sidebar" id="sidebar">
					<aside>
						<div class="aside-body">
							<figure class="ads">
								<img src="images/ad.png">
								<figcaption>Advertisement</figcaption>
							</figure>
						</div>
					</aside>

					<aside>
						<div class="aside-body">
							<form class="newsletter">
								<div class="icon">
									<i class="ion-ios-email-outline"></i>
									<h1>Newsletter</h1>
								</div>
								<div class="input-group">
									<input type="email" class="form-control email"
										placeholder="Your mail">
									<div class="input-group-btn">
										<button class="btn btn-primary">
											<i class="ion-paper-airplane"></i>
										</button>
									</div>
								</div>
								<p>By subscribing you will receive new articles in your
									email.</p>
							</form>
						</div>
					</aside>
				</div>
				<div class="col-md-8">
					<!-- <ol class="breadcrumb">
						  <li><a href="#">Home</a></li>
						  <li class="active"></li>
						</ol> -->
					<article class="article main-article">
						<header>
							<h1>${newsDetail.title}</h1>
							<ul class="details">
								<li>Đăng ngày <fmt:formatDate pattern="dd/MM/yyyy"
										value="${newsDetail.createdDate}" /></li>
								<li><a> ${newsDetail.categoryId.name}</a></li>
								<li>Viết bởi <a href="#"> ${newsDetail.authorId.name} </a></li>
							</ul>
						</header>
						<div class="main">
							<p>${newsDetail.shortDescription}</p>
							<div class="featured">
								<figure>
									<img
										src="<c:url value ='/image/web/news/${newsDetail.image}'/> "
										alt="${newsDetail.image}">
									<!-- <figcaption>Image by pexels.com</figcaption> -->
								</figure>
							</div>

							<p>${newsDetail.content}</p>
						</div>

					</article>
					<div class="sharing">
						<div class="title">
							<i class="ion-android-share-alt"></i> Chia sẻ
						</div>
						<ul class="social">
							<li><a href="#" class="facebook"> <i
									class="ion-social-facebook"></i> Facebook
							</a></li>
							<li><a href="#" class="twitter"> <i
									class="ion-social-twitter"></i> Twitter
							</a></li>
							<li><a href="#" class="googleplus"> <i
									class="ion-social-googleplus"></i> Google+
							</a></li>
							<li><a href="#" class="linkedin"> <i
									class="ion-social-linkedin"></i> Linkedin
							</a></li>
							<li><a href="#" class="skype"> <i
									class="ion-ios-email-outline"></i> Email
							</a></li>
							<li class="count">20
								<div>Chia sẻ</div>
							</li>
						</ul>
					</div>

					<!-- <div class="line"><div>You May Also Like</div></div>
						<div class="row">
							<article class="article related col-md-6 col-sm-6 col-xs-12">
								<div class="inner">
									<figure>
										<a href="#">
											<img src="images/news/img03.jpg">
										</a>
									</figure>
									<div class="padding">
										<h2><a href="#">Duis aute irure dolor in reprehenderit in voluptate</a></h2>
										<div class="detail">
											<div class="category"><a href="category.html">Lifestyle</a></div>
											<div class="time">December 26, 2016</div>
										</div>
									</div>
								</div>
							</article>
							<article class="article related col-md-6 col-sm-6 col-xs-12">
								<div class="inner">
									<figure>
										<a href="#">
											<img src="images/news/img08.jpg">
										</a>
									</figure>
									<div class="padding">
										<h2><a href="#">Duis aute irure dolor in reprehenderit in voluptate</a></h2>
										<div class="detail">
											<div class="category"><a href="category.html">Lifestyle</a></div>
											<div class="time">December 26, 2016</div>
										</div>
									</div>
								</div>
							</article>
						</div> -->
					<div class="line thin"></div>
					<div class="comments">

						<div class="comment-list">
							<c:if test="${ requestScope.ListComment.size() != 0}">
								<c:forEach var="i" begin="0"
									end="${requestScope.ListComment.size()-1}">
									<c:if test="${i<= requestScope.ListComment.size()-1}">
										<div class="item">
											<div class="user">
												<div class="details">
													<h5 class="name">
														${ListComment.get(i).getUserId().getFullName()}</h5>
													<div class="time">24 Hours</div>
													<div class="description">
														${ListComment.get(i).content}</div>
													<footer>
														<a href="#">Trả lời</a>
													</footer>
												</div>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</c:if>
						</div>
						<c:choose>
							<c:when test="${ empty sessionScope.USER}">
								<div class="col-md-12">
								<h4 class="title">Ý kiến</h4>
								<div>Bạn không thể bình luận bài báo này khi chưa đăng nhập tài khoản</div>
								<div> <a href='<c:url value ="account-login"/>'>Đăng nhập</a></div>
							</div>
							</c:when>
							<c:otherwise>
								<form class="row" action="Comment" method="post">
							<div class="col-md-12">
								<h4 class="title">Ý kiến</h4>
							</div>
							<div class="form-group col-md-12">
								<label for="message">Nội dung <span class="required"></span></label>
								<textarea class="form-control" required="required"
									name="message" placeholder="Ý kiến của bạn ..."></textarea>
									<input type = "hidden" name="user" value="${USER.id}" />
									<input type = "hidden" name ="news" value="${newsDetail.id }" />
							</div>
							<div class="form-group col-md-12">
								<button class="btn btn-primary" type="submit">Gửi</button>
							</div>
						</form>
							</c:otherwise>
						</c:choose>
						
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>