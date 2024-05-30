<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
    <!doctype html>
    <html lang="en">

    <head>
        <!-- Website infomation -->
        <title>Táo Thơm | Táo giá thơm</title>
        <link rel="shortcut icon" href="image/Logo/Apple_Store_logo.svg.png" type="image/x-icon">

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="css/style.css">

        <!-- AngularJS -->
        <script src="js/angular.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular-route.js"></script>
        <script src="js/data.js"></script>
    </head>

    <body>
        <jsp:include page="Header.jsp"></jsp:include>
        <main>
            <!--Ads-->
            <div id="carouselExampleAutoplaying" class="container carousel slide mx-auto mt-4" style="width: 95%;"
                data-bs-ride="carousel">
                <div class="carousel-inner" data-bs-interval="100">
                    <div class="carousel-item active">
                        <img src="/images/AD/1001.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/AD/1002.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/AD/1003.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/AD/1004.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
            </div>


            <!--Danh mục phân phối-->
            <div class="container border rounded-5 mt-4"
                style="background-image: linear-gradient(rgb(255, 194, 130), rgb(255, 220, 155))">
                <!--jumbotron-->
                <div class="row align-items-md-stretch" ng-controller="nav-controller">
                    <div class="h-100 p-4 rounded-3 text-center">
                        <h2>DÒNG SẢN PHẨM ĐANG PHÂN PHỐI</h2>
                        <div class="card-group mb-3">
                            <div class="col-3 p-2">
                                <a href="/Assignment/category/1">
                                    <div class="card border-0 border rounded-4">
                                        <div class="card-body" id="itemShow">
                                            <img src="/images/Product/iphone/12.jpg" alt="">
                                        </div>
                                        <div class="card-footer text-muted text-center bg-transparent border border-0">
                                            <h5>iPhone</h5>
                                        </div>
                                    </div>
                                </a>
                            </div>
							<div class="col-3 p-2">
                                <a href="/Assignment/category/2">
                                    <div class="card border-0 border rounded-4">
                                        <div class="card-body" id="itemShow">
                                            <img src="/images/Product/ipad.png" alt="">
                                        </div>
                                        <div class="card-footer text-muted text-center bg-transparent border border-0">
                                            <h5>iPad</h5>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-3 p-2">
                                <a href="/Assignment/category/3">
                                    <div class="card border-0 border rounded-4">
                                        <div class="card-body" id="itemShow">
                                            <img src="/images/Product/macbook.jpeg" alt="">
                                        </div>
                                        <div class="card-footer text-muted text-center bg-transparent border border-0">
                                            <h5>Macbook</h5>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-3 p-2">
                                <a href="/Assignment/category/4">
                                    <div class="card border-0 border rounded-4">
                                        <div class="card-body" id="itemShow">
                                            <img src="/images/Product/phukien.jpg" alt="">
                                        </div>
                                        <div class="card-footer text-muted text-center bg-transparent border border-0">
                                            <h5>Phụ Kiện</h5>
                                        </div>
                                    </div>
                                </a>
                            </div>	                          
                          
                               
                        </div>
                    </div>
                </div>
            </div>

            <!--Sản phẩm-->
            <div class="container border rounded-5 mt-4 border-0">
                <!--jumbotron-->
				<div class="row align-items-md-stretch" ng-controller="nav-controller">
				    <div class="h-100 p-4 rounded-3 text-center">
				        <h2>IPHONE NEW VN/A</h2>
				        <div class="card-group mb-3">
				            <c:forEach items="${iPhoneProducts}" var="product" varStatus="status">
				                <c:if test="${status.index < 4}">
				                    <div class="col-3 p-2">
				                        <a href="/Assignment/detail/${product.id}">
				                            <div class="card border-0 border rounded-4">
				                                <div class="card-body" id="itemShow">
				                                    <img src="/images/Product/${product.image}" alt="">
				                                </div>
				                                <div class="card-footer text-muted text-center bg-transparent border border-0"
				                                    id="itemShow1-footer">
				                                    <h6>${product.name}</h6>
				                                    <p style="color: red; font-weight: bold;"><span class="price-format">${product.price}</span></p>
				                                </div>
				                            </div>
				                        </a>
				                    </div>
				                </c:if>
				            </c:forEach>
				        </div>
				        <div class="text-center">
				            <a href="/Assignment/category/1">
				                <button class="btn btn-warning px-4 mt-4 text-white" type="button">
				                    Xem tất cả
				                </button>
				            </a>
				        </div>
				    </div>
				</div>
            </div>

            <!--Sản phẩm-->
            <div class="container py-4">
                <div class="row align-items-md-stretch mt-2" ng-controller="item-controller">
                    <div class="h-100 p-5 rounded-3">
                        <h2>iPad New VNA</h2>
                         <div class="card-group">
                            <c:forEach items="${iPadProducts}" var="product" varStatus="status">
						        <c:if test="${status.index < 4}">
				                    <div class="col-3 p-2">
				                        <a href="/Assignment/detail/${product.id}">
				                            <div class="card border-0 border rounded-4">
				                                <div class="card-body" id="itemShow">
				                                    <img src="/images/Product/${product.image}" alt="">
				                                </div>
				                                <div class="card-footer text-muted text-center bg-transparent border border-0"
				                                    id="itemShow1-footer">
				                                    <h6>${product.name}</h6>
				                                    <p style="color: red; font-weight: bold;"><span class="price-format">${product.price}</span></p>
				                                </div>
				                            </div>
				                        </a>
				                    </div>
				                </c:if>
						    </c:forEach>
                        </div>
                    </div>
                <div class="text-center">
                    <a href="/Assignment/category/2">
                        <button class="btn btn-warning px-4 text-white" type="button">
                            Xem tất cả
                        </button>
                    </a>
                </div>
            </div>

            <!--Sản phẩm-->
            <div class="container py-4">
                <div class="row align-items-md-stretch mt-2" ng-controller="item-controller">
                    <div class="h-100 p-5 rounded-3">
                        <h2>Macbook New VNA</h2>
                         <div class="card-group">
                            <c:forEach items="${MacProducts}" var="product" varStatus="status">
                                <c:if test="${status.index < 4}">
				                    <div class="col-3 p-2">
				                        <a href="/Assignment/detail/${product.id}">
				                            <div class="card border-0 border rounded-4">
				                                <div class="card-body" id="itemShow">
				                                    <img src="/images/Product/${product.image}" alt="">
				                                </div>
				                                <div class="card-footer text-muted text-center bg-transparent border border-0"
				                                    id="itemShow1-footer">
				                                    <h6>${product.name}</h6>
				                                    <p style="color: red; font-weight: bold;"><span class="price-format">${product.price}</span></p>
				                                </div>
				                            </div>
				                        </a>
				                    </div>
				                </c:if>
						    </c:forEach>
                        </div>
                    </div>
                <div class="text-center">
                    <a href="/Assignment/category/3">
                        <button class="btn btn-warning px-4 text-white" type="button">
                            Xem tất cả
                        </button>
                    </a>
                </div>
            </div>
        </div>

        </main>

        <hr>

        <jsp:include page="Footer.jsp"></jsp:include>

        <!-- Nội dung trang web -->

         <script>
		    var priceElements = document.getElementsByClassName('price-format');
		    for (var i = 0; i < priceElements.length; i++) {
		        var price = parseFloat(priceElements[i].innerHTML);
		        var formattedPrice = price.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
		        priceElements[i].innerHTML = formattedPrice;
		    }
		</script>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    <style>
        #itemShow {
            height: 200px;
            width: 100%;
            min-height: 30%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #itemShow img {
            max-height: 100%;
            max-width: 100%;
            object-fit: contain;
        }

        #itemShow1 {
            height: 280px;
            width: 100%;
            min-height: 30%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #itemShow1 img {
            max-height: 100%;
            max-width: 100%;
            object-fit: contain;
        }

        #itemShow1-group:hover img,
        #itemShow1-group:hover h6 {
            transform: scale(1.1);
            color: rgb(255, 179, 92);
        }


        .card-group a {
            text-decoration: none;
        }

        /*Footer*/
        .foot-pd-li li {
            margin-bottom: 20px;
            font-size: small;
        }

        .foot-pd-li li a {
            text-decoration: none;
            color: gray;
        }

        .foot-pd-li li a:hover {
            color: rgb(74, 74, 74);
        }
    </style>

    </html>