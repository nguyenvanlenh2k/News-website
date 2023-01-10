<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${sessionScope.listNews.get(0).categoryId.name}</title>
</head>
<body class="skin-orange">


	<section class="home">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="headline">
					<div class="nav" id="headline-nav">
						<a class="left carousel-control" role="button" data-slide="prev">
							<span class="ion-ios-arrow-left" aria-hidden="true"></span> <span
							class="sr-only">Trước</span>
						</a> <a class="right carousel-control" role="button" data-slide="next">
							<span class="ion-ios-arrow-right" aria-hidden="true"></span> <span
							class="sr-only">Sau</span>
						</a>
					</div>
					<div class="owl-carousel owl-theme" id="headline">
						<c:forEach var="i" begin="0" end="3">
						<c:if test="${i < listNews.size()-1}">
						<div class="item">
							<a href="<c:url value ='/Content?id=${listNews.get(i).id}' />">${listNews.get(i).title }</a>
						</div>
						</c:if>
						</c:forEach>
					</div>
				</div>
					<div class="owl-carousel owl-theme slide" id="featured">
						<div class="item">
							<article class="featured">
								<div class="overlay"></div>
								<figure>
									<img
										src="<c:url value ='/image/web/news/${sessionScope.listNews.get(0).image}' />"
										alt="Sample Article">
								</figure>
								<div class="details">
									<div class="category">
										<a href="#">${sessionScope.listNews.get(0).categoryId.name}</a>
									</div>
									<h1>
										<a
											href="<c:url value ='/Content?id=${sessionScope.listNews.get(0).id}' /> ">${ sessionScope.listNews.get(0).title }</a>
									</h1>
									<div class="time">
										<fmt:formatDate pattern="dd/MM/yyyy"
											value="${listAllNews.get(0).createdDate}" />
									</div>
								</div>
							</article>
						</div>

					</div>
					<div class="line">
						<div>Tin mới nhất</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="row">
								<c:forEach var="i" begin="1" end="2">
								<c:if test="${i < listNews.size()-1}">
									<article class="article col-md-12">
										<div class="inner">
											<figure>
												<a
													href="<c:url value ='/Content?id=${sessionScope.listNews.get(i).id}' />">
													<img
													src="<c:url value ='/image/web/news/${sessionScope.listNews.get(i).image}' />"
													alt="Sample Article">
												</a>
											</figure>
											<div class="padding">
												<div class="detail">
													<div class="time">
														<fmt:formatDate pattern="dd/MM/yyyy"
															value="${listAllNews.get(i).createdDate}" />
													</div>
													<div class="category">
														<a href="category.html">${ sessionScope.listNews.get(i).categoryId.name }</a>
													</div>
												</div>
												<h2>
													<a
														href="<c:url value ='/Content?id=${sessionScope.listNews.get( i ).id}' />">${ sessionScope.listNews.get( i).title }</a>
												</h2>
												<p>${ sessionScope.listNews.get(i).shortDescription }</p>
												<footer>
													<a href="#" class="love"><i
														class="ion-android-favorite-outline"></i>
														<div>1263</div></a> <a class="btn btn-primary more"
														href="<c:url value ='/Content?id=${sessionScope.listNews.get(i).id}' />">
														<div>Chi tiết</div>
														<div>
															<i class="ion-ios-arrow-thin-right"></i>
														</div>
													</a>
												</footer>
											</div>
										</div>
									</article>
									</c:if>
								</c:forEach>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="row">
								<c:forEach var="i" begin="3" end="4">
								<c:if test="${ i < listNews.size()-1}">
									<article class="article col-md-12">
										<div class="inner">
											<figure>
												<a
													href="<c:url value ='/Content?id=${sessionScope.listNews.get(i).id}' />">
													<img
													src="<c:url value ='/image/web/news/${sessionScope.listNews.get(i).image}' />"
													alt="Sample Article">
												</a>
											</figure>
											<div class="padding">
												<div class="detail">
													<div class="time">
														<fmt:formatDate pattern="dd/MM/yyyy"
															value="${listAllNews.get(i).createdDate}" />
													</div>
													<div class="category">
														<a href="category.html">${ sessionScope.listNews.get(i).categoryId.name }</a>
													</div>
												</div>
												<h2>
													<a
														href="<c:url value ='/Content?id=${sessionScope.listNews.get( i ).id}' />">${ sessionScope.listNews.get( i).title }</a>
												</h2>
												<p>${ sessionScope.listNews.get(i).shortDescription }</p>
												<footer>
													<a href="#" class="love"><i
														class="ion-android-favorite-outline"></i>
														<div>1263</div></a> <a class="btn btn-primary more"
														href="<c:url value ='/Content?id=${sessionScope.listNews.get(i).id}' />">
														<div>Chi tiết</div>
														<div>
															<i class="ion-ios-arrow-thin-right"></i>
														</div>
													</a>
												</footer>
											</div>
										</div>
									</article>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="line top">
						<div>Tin tức khác</div>
					</div>
					<div class="row">
						<c:forEach var="i" begin="6" end="10">
						<c:if test="${ i < listNews.size()-1}">
							<article class="col-md-12 article-list">
								<div class="inner">
									<figure>
										<a
											href="<c:url value ='/Content?id=${sessionScope.listNews.get( i ).id}' />">
											<img
											src="<c:url value ='/image/web/news/${sessionScope.listNews.get(i).image}' />"
											alt="Sample Article">
										</a>
									</figure>
									<div class="details">
										<div class="detail">
											<div class="category">
												<a href="#">${ sessionScope.listNews.get(i).categoryId.name }</a>
											</div>
											<div class="time">
												<fmt:formatDate pattern="dd/MM/yyyy"
													value="${sessionScope.listNews.get(i).createdDate}" />
											</div>
										</div>
										<h1>
											<a
												href="<c:url value ='/Content?id=${sessionScope.listNews.get( i ).id}' />">${ sessionScope.listNews.get( i).title }</a>
										</h1>
										<p>${ sessionScope.listNews.get(i).shortDescription }</p>
										<footer>
											<a href="#" class="love"><i
												class="ion-android-favorite-outline"></i>
												<div>273</div></a> <a class="btn btn-primary more"
												href="<c:url value ='/Content?id=${sessionScope.listNews.get(i).id}' />">
												<div>Chi tiết</div>
												<div>
													<i class="ion-ios-arrow-thin-right"></i>
												</div>
											</a>
										</footer>
									</div>
								</div>
							</article>
							</c:if>
						</c:forEach>
					</div>
				</div>
				<div class="col-xs-6 col-md-4 sidebar" id="sidebar">
				<div class="sidebar-title for-tablet">Sidebar</div>
				<aside>
				<h1 class="aside-title">
					Đọc nhiều nhất <a href="#" class="all">See All <i
						class="ion-ios-arrow-right"></i></a>
				</h1>
				<div class="aside-body">
					<c:forEach var="i" begin="11" end="${listNews.size()-1}">
					<c:if test="${ i < listNews.size()-1}">
						<article class="article-mini">
						<div class="inner">
							<figure> <a
								href="<c:url value ='/Content?id=${sessionScope.listNews.get(i).id}' />">
								<img
								src="<c:url value ='/image/web/news/${sessionScope.listNews.get(i).image}' />">
							</a> </figure>
							<div class="padding">
								<h1>
									<a href="<c:url value ='/Content?id=${sessionScope.listNews.get( i ).id}' />">${ sessionScope.listNews.get( i).title }</a>
								</h1>
							</div>
						</div>
						</article>
						</c:if>
					</c:forEach>
				</div>
				</aside>
				<aside>
				<img src = "<c:url value ='/image/web/news/adv3.png' />"alt="quảng cáo 1"/>
				</aside>
				<aside>
				<img src = "<c:url value ='/image/web/news/adv4.jpg' />"alt="quảng cáo 1"/>
				</aside>
				<aside>
				<img src = "<c:url value ='/image/web/news/adv1.png' />"alt="quảng cáo 1"/>
				</aside>
			</div>
		</div>

			</div>
		</div>
	</section>



</body>