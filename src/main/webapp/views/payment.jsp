<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Website infomation -->
    <title>Táo Thơm | Cart</title>
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
        <!-- nav -->
        <div>
            <div class="container pt-3 " style="font-size: medium; text-decoration: none;">
                <span><a href="index.html" style="text-decoration: none; color: gray;">Trang chủ</a> ></span>
                <span" style="text-decoration: none; color: gray;">Giỏ hàng</span>
            </div>
        </div>

        <!-- Nội dung trang web -->
        <div class="container mt-3 border-1 rounded-3" style="max-width: 600px; background-color: rgb(245, 245, 245);">
            <div class="headerTitle text-center">
                <h2 class="pt-3">Đặt hàng</h2>
            </div>
            <hr>
            <div >
                <div class="row">
                    <div class="col-1">
                    </div>
                    <div class="col-3">
                        <img class="justify-content-center" src="../images/Product/${item.image}" alt=""
                            style="max-width: 100px;">
                    </div>
                    <div class="col-6">
                        <h5 class="mt-2">${item.name}</h5>
                         <p style="color: red; font-weight: bold;"><span class="price-format">${item.price}</span></p>
                    </div>
                    <div class="col-2">
                        <p type="number" class="mt-3" style="width: 80%;" value="1">SL: 1</p>
                    </div>
                </div>
                <hr>
            </div>
            <div class="Form">
                <div class="mt-4">
                    <form action="index.html">
                        <div class="row">
                            <h5>Thông tin khách hàng</h5>
                            <div class="form-group col-md-6 mb-3">
                                <label for="sdt">Số điện thoại</label>
                                <input id="sdt" class="form-control" type="text" name="sdt" required
                                    pattern="[0-9]{10}">
                                <small class="form-text text-muted">Vui lòng nhập số điện thoại 10 chữ số.</small>
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="hoTen">Họ và tên</label>
                                <input id="hoTen" class="form-control" type="text" name="hoTen" required
                                    pattern="[A-Za-z\s]+">
                                <small class="form-text text-muted">Vui lòng nhập họ và tên chỉ bao gồm chữ cái.</small>
                            </div>
                            <div class="form-group mb-3">
                                <label for="email">Email</label>
                                <input id="email" class="form-control" type="email" name="email" required
                                    pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}">
                                <small class="form-text text-muted">Vui lòng nhập địa chỉ email hợp lệ.</small>
                            </div>
                        </div>
                        <div class="row">
                            <h5>Thông tin nhận hàng</h5>
                            <div class="form-group col-md-6 mb-3">
                                <label>Thành phố:</label>
                                <select class="form-control" ng-model="selectedCity"
                                    ng-options="city for city in cities" ng-change="loadDistricts()" required>
                                    <option value="">-- Chọn thành phố --</option>
                                </select>
                                <small class="form-text text-muted">Vui lòng chọn thành phố.</small>
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label>Quận/Huyện:</label>
                                <select class="form-control" ng-model="selectedDistrict"
                                    ng-options="district.name for district in districts" ng-change="loadWards()"
                                    required>
                                    <option value="">-- Chọn quận/huyện --</option>
                                </select>
                                <small class="form-text text-muted">Vui lòng chọn quận/huyện.</small>
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="phuongXa">Phường/ Xã</label>
                                <select class="form-control" ng-model="selectedWard" ng-options="ward for ward in wards"
                                    required>
                                    <option value="">-- Chọn phường/xã --</option>
                                </select>
                                <small class="form-text text-muted">Vui lòng chọn phường/xã.</small>
                            </div>
                            <div class="form-group col-md-6 mb-3">
                                <label for="soNha">Số Nhà</label>
                                <input id="soNha" class="form-control" type="text" name="soNha" required>
                                <small class="form-text text-muted">Vui lòng nhập số nhà.</small>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12 mb-3">
                                <label for="my-input">Ghi chú</label>
                                <textarea class="form-control" rows="2"></textarea>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-9">
                                <h5>Tạm tính</h5>
                                 <p style="color: red; font-weight: bold;"><span class="price-format">${item.price}</span></p>
                            </div>
                            <div class="col-3 mb-3">
                                <button type="submit" class="w-100 h-100 border-0 rounded-3 bg-danger text-white">Đặt hàng</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>

    </main>

    <hr>
	<jsp:include page="Footer.jsp"></jsp:include>


    <!-- Angular Script-->
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

    .checkbox-round {
        width: 1.3em;
        height: 1.3em;
        background-color: white;
        border-radius: 50%;
        vertical-align: middle;
        border: 1px solid #ddd;
        appearance: none;
        -webkit-appearance: none;
        outline: none;
        cursor: pointer;
    }

    .checkbox-round:checked {
        appearance: auto;
        clip-path: circle(50% at 50% 50%);
        background-color: rgb(0, 0, 114);
    }

 
</style>

</html>