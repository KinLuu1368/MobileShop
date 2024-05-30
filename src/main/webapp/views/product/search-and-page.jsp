<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search and Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="mt-3">Search and Page</h1>
        <form action="/product/search-and-page" method="get" class="mb-3">
            <div class="input-group">
                <input type="text" name="keywords" value="${keywords}" class="form-control">
                <button type="submit" class="btn btn-primary">Search</button>
            </div>
        </form>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${page.content}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.name}</td>
                        <td>${item.price}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div>
            <a href="/product/search-and-page?p=0" class="btn btn-primary">First</a>
            <a href="/product/search-and-page?p=${page.number-1}" class="btn btn-primary">Previous</a>
            <a href="/product/search-and-page?p=${page.number+1}" class="btn btn-primary">Next</a>
            <a href="/product/search-and-page?p=${page.totalPages-1}" class="btn btn-primary">Last</a>
        </div>
        <ul class="list-unstyled mt-3">
            <li>Current number of elements: ${page.numberOfElements}</li>
            <li>Page number: ${page.number}</li>
            <li>Page size: ${page.size}</li>
            <li>Total number of elements: ${page.totalElements}</li>
            <li>Total number of pages: ${page.totalPages}</li>
        </ul>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>