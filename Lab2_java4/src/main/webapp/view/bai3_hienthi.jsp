<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB 2 - BÀI 3 - JAVA 4</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<form class="container">
        <ul class="list-group list-group-flush">
		  	<li class="list-group-item">Tên đăng nhập: <b>${username}</b></li>
		  	<li class="list-group-item">Mật khẩu: <b>${password}</b></li>
		  	<li class="list-group-item">Giới tính: <b>${genderStatus}</b></li>
		  	<li class="list-group-item">Tình trạng hôn nhân: <b>${marriedStatus}</b></li>
		  	<li class="list-group-item">Quốc tịch: <b>${country}</b></li>
		  	<li class="list-group-item">Sở thích: <b>${hobbies}</b></li>
		  	<li class="list-group-item">Ghi chú: <b>${notes}</b></li>
		</ul>
        <a href="/Lab2_java4" class="btn btn-secondary" role="button">Về trang chủ</a>
    </form>
</body>
</html>