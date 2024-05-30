<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<html lang="en">

<head>
    <!-- Website infomation -->
    <title>Táo Thơm | Táo giá thơm</title>
    <link rel="shortcut icon" href="images/Logo/Apple_Store_logo.svg.png" type="image/x-icon">

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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
    <script src="js/data.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular-route.js"></script>
</head>

<body>
	<jsp:include page="Header.jsp"/>
    <main>
        <!-- Nội dung trang web -->
        <div class="container w-100">
            <div id="carouselExampleAutoplaying" class="carousel slide mx-auto mt-4" style="width: 95%;"
                data-bs-ride="carousel">
                <div class="carousel-inner" data-bs-interval="100">
                    <div class="carousel-item active">
                        <img src="/images/AD/1008.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/AD/1007.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
            </div>
            <!-- nav -->
            <div>
                <div class="container pt-3 " style="font-size: medium; text-decoration: none;">
                    <span><a href="/Assignment/home" style="text-decoration: none; color: gray;">Trang chủ</a> ></span>
                    <span><a href="/Assignment/category/${categoryId}" style="text-decoration: none; color: gray;">${categoryName}</a></span>
                </div>
            </div>

            <div class="card-group mb-3">
                <div class="row">
				    <c:forEach items="${products}" var="product">
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
				    </c:forEach>
				</div>
            </div>
	    </div>
    </main>
	
	<hr>
	
	<jsp:include page="Footer.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
	    var priceElements = document.getElementsByClassName('price-format');
	    for (var i = 0; i < priceElements.length; i++) {
	        var price = parseFloat(priceElements[i].innerHTML);
	        var formattedPrice = price.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
	        priceElements[i].innerHTML = formattedPrice;
	    }
	</script>
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

    option {
        margin-top: 20px;
        background-color: aliceblue;
        font-size: 17px;
        text-align: left;
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