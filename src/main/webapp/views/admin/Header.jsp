<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
    <header class="bg-dark text-white py-3">
        <div class="container">
            <div class="row align-items-center">
                <div class="col">
                    <h1 class="m-0">Admin Dashboard</h1>
                </div>
                <div class="col-auto">
                    <nav class="navbar navbar-expand">
                        <ul class="navbar-nav">
                        	<li class="nav-item">
                                <a class="nav-link" href="/Assignment/home">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/admin/category/index">Category</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/admin/product/index">Products</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/admin/account/index">Account</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Order</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <!-- Content goes here -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>