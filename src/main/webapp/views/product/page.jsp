<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Sorting</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h3>PAGINATION</h3>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${page.content}">
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
        <div>
            <a href="/product/page?p=0" class="btn btn-primary">First</a>
            <a href="/product/page?p=${page.number-1}" class="btn btn-primary">Previous</a>
            <a href="/product/page?p=${page.number+1}" class="btn btn-primary">Next</a>
            <a href="/product/page?p=${page.totalPages-1}" class="btn btn-primary">Last</a>
        </div>
        <ul>
            <li>Số thực thể hiện tại: ${page.numberOfElements}</li>
            <li>Trang số: ${page.number}</li>
            <li>Kích thước trang: ${page.size}</li>
            <li>Tổng số thực thể: ${page.totalElements}</li>
            <li>Tổng số trang: ${page.totalPages}</li>
        </ul>
    </div>
</body>
</html>