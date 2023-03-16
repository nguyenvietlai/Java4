<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nguyen Viet Lai</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<form class="container" action="/Lab2_java4/bai3" method="post">
		
        <div class="row mb-3">
            <label for="inputUsername3" class="col-sm-2 col-form-label">Tên đăng nhập: </label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputUsername3" name="username">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputPassword3" class="col-sm-2 col-form-label">Mật khẩu:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword3" name="password">
            </div>
        </div>
        <fieldset class="row mb-3">
            <legend class="col-form-label col-sm-2 pt-0">Giới tính:</legend>
            <div class="col-sm-10">
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" id="inlineRadio1"
                        value="true" checked>
                    <label class="form-check-label" for="inlineRadio1">Nam</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" id="inlineRadio2"
                        value="false">
                    <label class="form-check-label" for="inlineRadio2">Nữ</label>
                </div>
            </div>
        </fieldset>
        <fieldset class="row mb-3">
            <legend class="col-form-label col-sm-2 pt-0">Sở thích:</legend>
            <div class="col-sm-10">
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobbies" id="inlineRadio1"
                          value="Đọc sách" checked>
                    <label class="form-check-label" for="inlineRadio1">Đọc sách</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobbies" id="inlineRadio2"
                       value="Du lịch" >
                    <label class="form-check-label" for="inlineRadio2">Du lịch</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobbies" id="inlineRadio2"
                        value="Âm nhạc">
                    <label class="form-check-label" for="inlineRadio2">Âm nhạc</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" name="hobbies" id="inlineRadio2"
                       value="Nhiều sở thích khác nữa">
                    <label class="form-check-label" for="inlineRadio2">Khác</label>
                </div>
            </div>
        </fieldset>
        <div class="row mb-3">
            <div class="col-sm-10 offset-sm-2">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck1" name="married">
                    <label class="form-check-label" for="gridCheck1">
                        Đã có gia đình?
                    </label>
                </div>
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label">Quốc tịnh:</label>
            <div class="col-sm-10">
                <select class="form-select" name="country">
                    <option selected>Chọn quốc tịch</option>
                    <option value="VN">Việt Nam</option>
                    <option value="US">United States</option>
                </select>
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-form-label">Ghi chú:</label>
            <div class="col-sm-10 form-floating">
                <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2"  name="notes" rows="3" cols="30"
                    style="height: 100px"></textarea>
                <label for="floatingTextarea2">Nội dung</label>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Đăng Ký</button>
    </form>
</body>
</html>