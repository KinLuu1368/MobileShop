<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>	
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Price</th>
                <th>Image</th>
                <th>Date</th>
                <th>Category</th>
                <th>Available</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${items}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.price}</td>
                    <td>${item.image}</td>
                    <td>${item.createDate}</td>
                    <td>${item.category.name}</td>
                    <td>${item.available}</td>
                    <td><a href="/admin/product/edit/${item.id}" class="btn btn-primary">Edit</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>