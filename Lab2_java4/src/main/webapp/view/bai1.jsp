<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bai1</title>
</head>
<body>
<form action="/Lab2_java4/bai1" method="post">
<input name="soa" placeholder="canh a" value="${soa}"><br>
<input name="sob" placeholder="canh b" value="${sob}"><br>
<input name="soc" placeholder="canh c" value="${soc}"><br>
<button formaction="/Lab2_java4/dientich">Tinh dien tich</button>
<button formaction="/Lab2_java4/chuvi">Tinh chu vi</button>
<a href="/Lab2_java4">về trang chủ </a>
</form>
<h1>${mess}</h1>
</body>
</html>