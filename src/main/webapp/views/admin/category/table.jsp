<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Category</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>	
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${items}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td><a href="/admin/category/edit/${item.id}" class="btn btn-primary">Edit</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>