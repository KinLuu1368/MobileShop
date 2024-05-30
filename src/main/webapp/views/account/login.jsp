<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Thêm liên kết tới tệp CSS của Bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/views/Header.jsp"/>
<div class="container" style="height: 500px">
    <div class="d-flex justify-content-center align-items-center p-3 m-4 h-100">
        <div class="form-container border border-1 p-4 m-5 h-100" style="width: 400px;">
            <h3 class="text-center mt-1 mb-4">ĐĂNG NHẬP</h3>
            
            <form action="/account/login" method="post">
                <div class="mb-3">
                    <label for="username" class="form-label">Tên đăng nhập</label>
                    <input type="text" class="form-control" id="username" name="username" required="true" placeholder="Nhập tài khoản">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Mật khẩu</label>
                    <input type="password" class="form-control" id="password" name="password" required="true" placeholder="Nhập mật khẩu">
                </div>
                <div class="text-center text-danger mb-3">
                    <b><i>${message}${param.error}</i></b>
                </div>
                <button type="submit" class="btn btn-primary w-100">Đăng nhập</button>
                <div class="text-center mt-3">Chưa có tài khoản? <a href="/account/register">Đăng ký</a></div>
            </form>
            <div class="text-center text-success mt-3">
                <a href="${link}"><i>${adminMessage}</i></a>
            </div>
            
        </div>
    </div>
</div>
<hr>
<jsp:include page="/views/Footer.jsp"/>
<!-- Thêm liên kết tới tệp JavaScript của Bootstrap (nếu cần) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
</body>
</html>