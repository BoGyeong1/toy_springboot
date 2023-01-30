<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <header
        class="container-fluid bg-dark d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 fixed-top">
        <a href="/main" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-white text-decoration-none fs-4">
            <img src="./img/logo.png" alt="" style="height: 30px;">
            <span class="ms-2">World of L4 Hotel</span>
        </a>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="/main" class="nav-link px-2 link-light">Home</a></li>
            <li><a href="" class="nav-link px-2 link-secondary">Survey</a></li>
            <li><a href="" class="nav-link px-2 link-secondary">Statistics</a></li>
        </ul>

        <div class="col-md-3 text-end">
                    <a href="/listPagination/1" class="btn btn-outline-light me-2">User List</a>
                    <a href="/signup" class="btn btn-light">Sign Up</a>
        </div>
    </header>