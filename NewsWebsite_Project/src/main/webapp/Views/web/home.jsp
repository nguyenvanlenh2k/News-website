<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${ requestScope.TITLE }</title>

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
						<div class="item">
							<a href="<c:url value ='/Content?id=${listAllNews.get(i).id}' />">${listAllNews.get(i).title }</a>
						</div>
						</c:forEach>
					</div>
				</div>
				<div class="owl-carousel owl-theme slide" id="featured">
					<c:forEach var="i" begin="0" end="3">
					
						<div class="item">
							<article class="featured">
							<div class="overlay"></div>
							<figure> <img
								src="<c:url value ='/image/web/news/${listAllNews.get(i).image}' />"
								alt="Sample Article"> </figure>
							<div class="details">
								<div class="category">
									<a href="#">${ listAllNews.get(i).categoryId.name }</a>
								</div>
								<h1>
									<a href="<c:url value ='/Content?id=${listAllNews.get(i).id}' />">${listAllNews.get(i).title }</a>
								</h1>
								<div class="time">
									<fmt:formatDate pattern="dd/MM/yyyy"
										value="${listAllNews.get(i).createdDate}" />
								</div>
							</div>
							</article>
						</div>
					</c:forEach>
				</div>
				<div class="line">
					<div>Tin mới nhất</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="row">
							<c:forEach var="i" begin="4" end="5">
								<article class="article col-md-12">
								<div class="inner">
									<figure> <a
										href="<c:url value ='/Content?id=${listAllNews.get(i).id}' />">
										<img
										src="<c:url value ='/image/web/news/${listAllNews.get(i).image}' />"
										alt="Sample Article">
									</a> </figure>
									<div class="padding">
										<div class="detail">
											<div class="time">
												<fmt:formatDate pattern="dd/MM/yyyy"
													value="${listAllNews.get(i).createdDate}" />
											</div>
											<div class="category">
												<a href="category.html">${ listAllNews.get(i).categoryId.name }</a>
											</div>
										</div>
										<h2>
											<a
												href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">${ listAllNews.get( i).title }</a>
										</h2>
										<p>${ listAllNews.get(i).shortDescription }</p>
										<footer> <a href="#" class="love"><i
											class="ion-android-favorite-outline"></i>
											<div>1263</div></a> <a class="btn btn-primary more"
											href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">
											<div>Chi tiết</div>
											<div>
												<i class="ion-ios-arrow-thin-right"></i>
											</div>
										</a> </footer>
									</div>
								</div>
								</article>
							</c:forEach>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="row">
							<c:forEach var="i" begin="6" end="7">
								<article class="article col-md-12">
								<div class="inner">
									<figure> <a
										href="<c:url value ='/Content?id=${listAllNews.get(i).id}' />">
										<img
										src="<c:url value ='/image/web/news/${listAllNews.get(i).image}' />"
										alt="Sample Article">
									</a> </figure>
									<div class="padding">
										<div class="detail">
											<div class="time">
												<fmt:formatDate pattern="dd/MM/yyyy"
													value="${listAllNews.get(i).createdDate}" />
											</div>
											<div class="category">
												<a href="#">${ listAllNews.get(i).categoryId.name }</a>
											</div>
										</div>
										<h2>
											<a
												href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">${ listAllNews.get( i).title }</a>
										</h2>
										<p>${ listAllNews.get(i).shortDescription }</p>
										<footer> <a href="#" class="love"><i
											class="ion-android-favorite-outline"></i>
											<div>1263</div></a> <a class="btn btn-primary more"
											href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">
											<div>Chi tiết</div>
											<div>
												<i class="ion-ios-arrow-thin-right"></i>
											</div>
										</a> </footer>
									</div>
								</div>
								</article>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="banner">
					<a href="#"> <img src="images/ads.png" alt="Sample Article">
					</a>
				</div>
				<div class="line transparent little"></div>
				<div class="row">
					<div class="col-md-6 col-sm-6 trending-tags">
						<h1 class="title-col">Top thịnh hành</h1>
						<div class="body-col">
							<ol class="tags-list">
								<li><a href="#">Ronaldo</a></li>
								<li><a href="#">Messi</a></li>
								<li><a href="#">WorldCup</a></li>
								<li><a href="#">2022</a></li>
								<li><a href="#">Ukraina</a></li>
								<li><a href="#">Jsp</a></li>
								<li><a href="#">Servlet</a></li>
								<li><a href="#">Java</a></li>
								<li><a href="#">MySQL</a></li>
								<li><a href="#">NLU</a></li>
							</ol>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<h1 class="title-col">
							Tin nóng
							<div class="carousel-nav" id="hot-news-nav">
								<div class="prev">
									<i class="ion-ios-arrow-left"></i>
								</div>
								<div class="next">
									<i class="ion-ios-arrow-right"></i>
								</div>
							</div>
						</h1>
						<div class="body-col vertical-slider" data-max="5"
							data-nav="#hot-news-nav" data-item="article">
							<c:forEach var="i" begin="8" end="12">
								<article class="article-mini">
								<div class="inner">
									<figure> <a
										href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">
										<img
										src="<c:url value ='/image/web/news/${listAllNews.get(i).image}' />"
										alt="Sample Article">
									</a> </figure>
									<div class="padding">
										<h1>
											<a
												href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">${ listAllNews.get( i).title }</a>
										</h1>
										<div class="detail">
											<div class="category">
												<a href="#">${ listAllNews.get(i).categoryId.name }</a>
											</div>
											<div class="time">
												<fmt:formatDate pattern="dd/MM/yyyy"
													value="${listAllNews.get(i).createdDate}" />
											</div>
										</div>
									</div>
								</div>
								</article>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="line top">
					<div>Tin tức khác</div>
				</div>
				<div class="row">
					<c:forEach var="i" begin="13" end="17">
						<article class="col-md-12 article-list">
						<div class="inner">
							<figure> <a
								href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">
								<img
								src="<c:url value ='/image/web/news/${listAllNews.get(i).image}' />"
								alt="Sample Article">
							</a> </figure>
							<div class="details">
								<div class="detail">
									<div class="category">
										<a href="#">${ listAllNews.get(i).categoryId.name }</a>
									</div>
									<div class="time">
										<fmt:formatDate pattern="dd/MM/yyyy"
											value="${listAllNews.get(i).createdDate}" />
									</div>
								</div>
								<h1>
									<a
										href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">${ listAllNews.get( i).title }</a>
								</h1>
								<p>${ listAllNews.get(i).shortDescription }</p>
								<footer> <a href="#" class="love"><i
									class="ion-android-favorite-outline"></i>
									<div>273</div></a> <a class="btn btn-primary more"
									href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">
									<div>Chi tiết</div>
									<div>
										<i class="ion-ios-arrow-thin-right"></i>
									</div>
								</a> </footer>
							</div>
						</div>
						</article>
					</c:forEach>
				</div>
			</div>
			<div class="col-xs-6 col-md-4 sidebar" id="sidebar">
				<div class="sidebar-title for-tablet">Thanh công cụ</div>
				<aside>
				<h1 class="aside-title">
					Đọc nhiều nhất <a href="#" class="all">See All <i
						class="ion-ios-arrow-right"></i></a>
				</h1>
				<div class="aside-body">
					<c:forEach var="i" begin="18" end="23">
						<article class="article-mini">
						<div class="inner">
							<figure> <a
								href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">
								<img
								src="<c:url value ='/image/web/news/${listAllNews.get(i).image}' />">
							</a> </figure>
							<div class="padding">
								<h1>
									<a
										href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">${ listAllNews.get( i).title }</a>
								</h1>
							</div>
						</div>
						</article>
					</c:forEach>
				</div>
				</aside>
				<aside>
				<img src = "<c:url value ='/image/web/news/adv1.png' />"alt="quảng cáo 1"/>
				</aside>
				<aside>
				<img src = "<c:url value ='/image/web/news/adv2.png' />"alt="quảng cáo 1"/>
				</aside>


			</div>
		</div>
	</div>
	</section>

	<section class="best-of-the-week">
	<div class="container">
		<h1>
			<div class="text">Đọc nhiều nhất tuần qua</div>
			<div class="carousel-nav" id="best-of-the-week-nav">
				<div class="prev">
					<i class="ion-ios-arrow-left"></i>
				</div>
				<div class="next">
					<i class="ion-ios-arrow-right"></i>
				</div>
			</div>
		</h1>
		<div class="owl-carousel owl-theme carousel-1">
			<c:forEach var="i" begin="24" end="${ listAllNews.size() - 1 }">
				<article class="article">
				<div class="inner">
					<figure> <a
						href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">
						<img
						src="<c:url value ='/image/web/news/${listAllNews.get(i).image}' />">
					</a> </figure>
					<div class="padding">
						<div class="detail">
							<div class="time">
								<fmt:formatDate pattern="dd/MM/yyyy"
									value="${listAllNews.get(i).createdDate}" />
							</div>
							<div class="category">
								<a href="#">${ listAllNews.get(i).categoryId.name }</a>
							</div>
						</div>
						<h2>
							<a
								href="<c:url value ='/Content?id=${listAllNews.get( i ).id}' />">${ listAllNews.get( i).title }</a>
						</h2>
						<p>${ listAllNews.get(i).shortDescription }</p>
					</div>
				</div>
				</article>
			</c:forEach>
		</div>
	</div>
	</section>

</body>


</html>