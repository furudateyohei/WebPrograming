<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <head>
	<!-- Required meta tags -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/orijin.css">

<title>ユーザ詳細情報</title>
</head>
<body>
<div class="alert alert-primary" role="alert">
  <p class="text-right">${userinfo.name}さん
  <span style="margin-right: 8em;"></span><a href="LogoutServlet" class="alert-link text-danger">ログアウト</a></p>
</div><br>
<br>
<h1 class="text-center">ユーザ情報詳細参照</h1><br>
<div class="loginForm">
<form action="UserInformationServlet" method="post">
  <div class="form-group row">
    <label for="inputLogin_ID" class="col-sm-4 col-form-label font-weight-bold">ログインID</label>
    <div class="col-sm-8">
    	<input type="text" readonly class="form-control-plaintext" value = ${user.loginId }>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputname" class="col-sm-4 col-form-label font-weight-bold">ユーザ名</label>
    <div class="col-sm-8">
      <input type="text" readonly class="form-control-plaintext"  value = ${user.name }>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputbirthDate" class="col-sm-4 col-form-label font-weight-bold">生年月日</label>
    <div class="col-sm-8">
      <input type="date" readonly class="form-control-plaintext" value = ${user.birthDate }>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputcreateDate" class="col-sm-4 col-form-label font-weight-bold">登録日時</label>
    <div class="col-sm-8">
      <input type="date" readonly class="form-control-plaintext" value = ${user.createDate }>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputupdateDate" class="col-sm-4 col-form-label font-weight-bold">更新日時</label>
    <div class="col-sm-8">
      <input type="date" readonly class="form-control-plaintext" value = ${user.updateDate }>
    </div>
  </div>
  <br>
   <p class = "text-left"><a href="UserListServlet" class="alert-link text-primary">戻る</a></p>
  </form>
  </div>
</body>
</html>