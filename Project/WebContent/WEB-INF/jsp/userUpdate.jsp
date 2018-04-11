<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <head>
	<!-- Required meta tags -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/orijin.css">

<title>ユーザ情報更新</title>
</head>
<body>
<c:if test="${errMsg != null}" >
	    <div class="alert alert-danger" role="alert">
		  ${errMsg}
		</div>
	</c:if>
<div class="alert alert-primary" role="alert">
  <p class="text-right">${userinfo.name}さん<span style="margin-right: 8em;">
  </span><a href="LogoutServlet" class="alert-link text-danger">ログアウト</a></p>
</div><br>
<br>
<h1 class="text-center">ユーザ情報更新</h1><br>
<div class="loginForm">
<form action="UserUpdateServlet" method="post">
  <div class="form-group row">
    <label for="inputLogin_ID" class="col-sm-4 col-form-label font-weight-bold">ログインID</label>
    <div class="col-sm-8">
    	<input type="text" readonly class="form-control-plaintext"  value = ${user.loginId }>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-4 col-form-label font-weight-bold">パスワード</label>
    <div class="col-sm-8">
      <input type="password" class="form-control" name = "password" id="inputPassword" placeholder="パスワード">
    </div>
  </div>
  	<div class="form-group row">
    <label for="inputPassword" class="col-sm-4 col-form-label font-weight-bold">パスワード（確認）</label>
    <div class="col-sm-8">
      <input type="password" class="form-control" name = "password2" id="inputpassword2" placeholder="パスワード（確認）">
    </div>
  </div>
  	<div class="form-group row">
    <label for="name" class="col-sm-4 col-form-label font-weight-bold">ユーザ名</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name = "name" id="inputname" value = ${user.name }>
    </div>
  </div>
  	<div class="form-group row">
    <label for="birth_date" class="col-sm-4 col-form-label font-weight-bold">生年月日</label>
    <div class="col-sm-8">
      <input type="date" name="birthDate" max="9999-12-31" class = "form-control"value = ${user.birthDate }>
    </div>
  </div>
  <p class="text-center"><button type="submit" class="btn btn-outline-primary">登録</button></p>
  <br>
  <p class = "text-left"><a href="UserListServlet" class="alert-link text-primary">戻る</a></p>
</form>
</div>
</body>
</html>