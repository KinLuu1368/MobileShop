<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Table Example</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="mt-3">Table Example</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Loại hàng</th>
                    <th>Tổng giá</th>
                    <th>Số sản phẩm</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${items}">
                    <tr>
                        <td>${item.group.name}</td>
                        <td>${item.sum}</td>
                        <td>${item.count}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>