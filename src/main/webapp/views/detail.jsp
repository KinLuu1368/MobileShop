<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
    <script src="js/data.js"></script>
</head>

<body>
	<jsp:include page="Header.jsp"></jsp:include>
    <main>
        <div>
            <div class="container pt-3 mb-3" style="font-size: medium; text-decoration: none;">
                <span><a href="/Assignment/home" style="text-decoration: none; color: gray;">Trang chủ</a> ></span>
                <span><a href="/Assignment/category/${categoryID}" style="text-decoration: none; color: gray;">${categoryName} ></a></span>
                <span style="text-decoration: none; color: gray;">${product.name}</span>
            </div>
        </div>

        <!-- Nội dung trang web -->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div>
                        <img src="/images/Product/${product.image}" style=" max-height: 100%; max-width: 100%;
                        object-fit: contain;" class="img-fluid">
                    </div>
                    <div class="row">
                        <fieldset>
                            <img src="/images/Product/${product.image}" class="img-thumbnail">
                        </fieldset>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="p-5 mt-3 custom-shadow border rounded-3">
                        <h4>${product.name}</h4>
                        <p style="font-size: medium; font-weight: bold; margin-bottom: 0;">
                            <span class="price-format">${product.price}</span>
                            <span style="text-decoration: line-through; color: rgb(192, 192, 192); font-size: small;">
                                <span class="price-format">${product.price *1.1}</span>
                            </span>
                        </p>
                        <span class="mt-0" style="font-size: small; color: rgb(192, 192, 192);">Giá đã bao gồm
                            VAT</span>

                        <hr>

                        <div class="row">
                            <div class="col-sm-7 mb-2">
								<a href="/Assignment/Addcart/${product.id}">
								 <button class="px-5 pt-2 w-100 border-0 rounded-3 text-white h-100"
	                                    style="background-color: orange;">
	                                        <h5 class="p-0 m-0">Mua ngay</h5>
	                                        <p style="font-size: small;" class="m-0 mb-2">Giao hàng tận nơi</p>
	                                </button>
								</a>
                            </div>
                            <div class="col-sm-5 mb-2">
                            	<a href="/cart/add/${product.id}">
	                                <button class=" w-100 bg-transparent border-1 rounded-3 text-white h-100"
	                                    style="border: 1px solid orange;">
	                                    <h6 style="color: orange;" class="m-0 p-0"><span class="bi bi-bag-fill"></span></h6>
	                                    <p style="font-size: small; color: orange;" class="m-0">Thêm vào giỏ</p>
	                                </button>
								</a>
                            </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-sm-6 mb-2">
                                <button class="px-5 pt-2 w-100 border-0 rounded-3 text-white h-100"
                                    style="background-color: rgb(12, 150, 254);">
                                    <h5 style="font-size: small;">Trả góp qua thẻ</h5>
                                    <p style="font-size: small;" class="m-0 mb-2">(Visa, Master, JCB)</p>
                                </button>
                            </div>
                            <div class="col-sm-6 mb-2">
                                <button class="px-5 pt-2 w-100 border-0 rounded-3 text-white h-100"
                                    style="background-color: rgb(12, 150, 254);">
                                    <h5 style="font-size: small;">Trả góp qua công ty</h5>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-3 custom-shadow border rounded-4">
                        <div class="card-header rounded-top-3"
                            style="color: orangered; background-color: rgb(255, 214, 138); font-weight: bold;"><span
                                class="bi bi-percent"></span> ƯU ĐÃI SẢN
                            PHẨM</div>
                        <div class="card-body" style="font-size: smaller; color: gray;">
                            <p> Sở hữu Combo <strong>Ốp lưng - Sạc nhanh - Cường lực</strong> cao cấp chỉ còn
                                <strong>750.000</strong> đồng khi mua kèm
                                iPhone: <br>
                                <strong>
                                    + 1 Ốp Spigen Liquid Crystal. <br>
                                    + 1 Sạc nhanh 20W Innostyle. <br>
                                    + Miếng dán Cường lực Mipow Kingbull Premium HD (2.7D).
                                </strong>
                            </p>
                            <hr>
                            <p>
                                <strong>
                                    Giảm đến 500K khi lên đời iPhone 15 series. <br>
                                    + Giảm 2% (tối đa 300K) khi tham gia thu cũ đổi mới. <br>
                                    + Giảm thêm 2% (tối đa 200k) khi lên đời từ iPhone 14 series lên iPhone 15 series.
                                </strong>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
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

    .img-fit {
        width: 100%;
        height: 100%;
        object-fit: contain;
    }

    .img-thumbnail {
        height: 80px;
        max-width: 95%;
    }

    .custom-shadow {
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    button {
        opacity: 90%;
    }

    button:hover {
        opacity: 100%;
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