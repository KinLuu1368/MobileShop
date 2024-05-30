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
    <h1 class="text-center mt-3">User Management</h1>
    <form:form method="post" modelAttribute="user">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="mb-3">
                        <form:input path="username" cssClass="form-control" required="true" placeholder="Username"/>
                    </div>
                    <div class="mb-3">
                        <form:input path="password" cssClass="form-control" required="true" placeholder="Password"/>
                    </div>
                    <div class="mb-3">
                        <form:input path="fullname" cssClass="form-control" required="true" placeholder="Fullname"/>
                    </div>
                    <div class="mb-3">
                        <form:input path="email" cssClass="form-control" required="true" placeholder="Email address"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-check-label">
                            <form:radiobutton path="admin" value="true" cssClass="form-check-input"/> Admin
                        </label>
                        <label class="form-check-label">
                            <form:radiobutton path="admin" value="false" cssClass="form-check-input"/> User
                        </label>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="d-flex justify-content-center">
            <button formaction="/admin/account/create" class="btn btn-primary me-2">Create</button>
            <button formaction="/admin/account/update" class="btn btn-primary me-2">Update</button>
            <a href="/admin/account/remove/${user.username}" class="btn btn-primary me-2">Delete</a>
            <a href="/admin/account/index" class="btn btn-primary me-2">Reset</a>
            <a href="/admin/product/index" class="btn btn-primary me-2">Product Management</a>
            <a href="/Assignment/home" class="btn btn-primary">HOME</a>
        </div>
    </form:form>
    
    <hr>
    <h1 class="text-center">Information</h1>
    <h1 class="text-center">${message}</h1>
    <table class="table table-bordered mt-4">
        <thead>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Fullname</th>
                <th>Email</th>
                <th>Role</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${items}">
                <tr>
                    <td>${item.username}</td>
                    <td>${item.password}</td>
                    <td>${item.fullname}</td>
                    <td>${item.email}</td>
                    <td>${item.admin? 'Admin':'User'}</td>
                    <td>
                        <a href="/admin/account/edit/${item.username}" class="btn btn-primary">Edit</a>
                        <a href="/admin/account/remove/${item.username}" class="btn btn-danger">Remove</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>