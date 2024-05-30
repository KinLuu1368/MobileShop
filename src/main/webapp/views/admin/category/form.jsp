<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Category Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="mt-4">Category Form</h2>
        <form:form action="/category/index" modelAttribute="item" class="mt-4">
            <div class="mb-3">
                <label for="id" class="form-label">Category Id</label>
                <form:input path="id" id="id" class="form-control" placeholder="Category Id" />
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Category Name</label>
                <form:input path="name" id="name" class="form-control" placeholder="Category Name" />
            </div>
            <hr>
            <div class="mb-3">
                <button formaction="/admin/category/create" class="btn btn-primary">Create</button>
                <button formaction="/admin/category/update" class="btn btn-primary">Update</button>
                <a href="/admin/category/delete/${item.id}" class="btn btn-danger">Delete</a>
                <a href="/admin/category/index" class="btn btn-secondary">Reset</a>
            </div>
        </form:form>
    </div>
</body>
</html>