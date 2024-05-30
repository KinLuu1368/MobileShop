<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Search</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <form action="/product/search" method="get" class="mb-3">
            <div class="row">
                <div class="col">
                    <input type="text" name="min" value="${param.min}" class="form-control" placeholder="Min Price">
                </div>
                <div class="col">
                    <input type="text" name="max" value="${param.max}" class="form-control" placeholder="Max Price">
                </div>
                <div class="col">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </div>
        </form>
    
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Create Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${items}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.name}</td>
                        <td>${item.price}</td>
                        <td>${item.createDate}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>