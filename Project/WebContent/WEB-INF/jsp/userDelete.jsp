<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <head>
	<!-- Required meta tags -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/orijin.css">

<title>ユーザ削除確認</title>
</head>
<body>
<div class="alert alert-primary" role="alert">
  <p class="text-right">${userinfo.name}さん
 <span style="margin-right: 8em;"></span>
  <a href="LogoutServlet" class="alert-link text-danger">ログアウト</a></p>
</div><br>
<br>
<h1 class="text-center">ユーザ削除確認</h1><br>
  <p class = "text-center">${user.loginId}を削除してよろしいですか？</p>
  <div class="loginForm">
  <form action="UserDeleteServlet" method="post">
  <input type="hidden" name="id" value="${user.id}">
  <div class="form-group row">
  <br>
  <br>
  <a class="btn btn-primary btn-lg btn-block" href="UserListServlet" role="button">キャンセル</a>
  <button type="submit" class="btn btn-danger  btn-lg btn-block">削除</button>
</div>
 </form>
 </div>
</body>
</html>