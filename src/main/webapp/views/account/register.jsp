<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Management</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="../Header.jsp" />
    <h1 class="text-center mt-3 mb-3">Đăng ký tài khoản</h1>
    <form:form method="post" modelAttribute="user">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="mb-3">
                        <form:input path="username" required="true" cssClass="form-control" placeholder="Username"/>
                    </div>
                    <div class="mb-3">
                        <form:password path="password" required="true" cssClass="form-control" placeholder="Password"/>
                    </div>
                    <div class="mb-3">
                        <form:input path="fullname" required="true" cssClass="form-control" placeholder="Fullname"/>
                    </div>
                    <div class="mb-3">
                        <form:input path="email" required="true" cssClass="form-control" placeholder="Email address"/>
                    </div>
                    <div class="mb-3" style="display:none">
                        <label class="form-check-label">
                            <form:radiobutton path="admin" value="false" cssClass="form-check-input" checked="checked"/> User
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Đăng ký</button>
                    <div class="text-center text-danger mb-3">
	                    <b><i>${message}${param.error}</i></b>
	                </div>
                </div>
            </div>
        </div>
    </form:form>
    <jsp:include page="../Footer.jsp" />
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>