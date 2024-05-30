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
            <div class="container pt-3 " style="font-size: medium; text-decoration: none;">
                <span><a href="index.html" style="text-decoration: none; color: gray;">Trang chủ</a> ></span>
                <span style="text-decoration: none; color: gray;">Liên hệ</span>
            </div>
        </div>

        <!-- Nội dung trang web -->

        <div class="container mt-3">
            <div>
                <h3>Thông tin liên hệ</h3>
                <p>Giờ làm việc: <strong>Thứ 2 đến Thứ 6</strong> (9:00-17h30), <strong>Thứ
                        7</strong> (9:00 -16:00)</p>
                <p>Hotline mua hàng: <strong>03347.10.393</strong></p>
                <p>Email liên hệ: <strong>luukien323@gmail.com</strong></p>
            </div>
            <div style="width: 100%;">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d742.7207115021731!2d106.6534167050877!3d10.726498894436403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752fec3e1d8927%3A0x32e330715ad17b4f!2zUGhvbmcgdGjhu6d5IGRp4buHbiB0xrDhu5tuZyBUaOG6o28gUGhvZW5peA!5e0!3m2!1svi!2s!4v1705212487711!5m2!1svi!2s"
                    width="600" height="450" style="border:0;"></iframe>
            </div>
        </div>

    </main>
    
    <jsp:include page="Footer.jsp"></jsp:include>


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