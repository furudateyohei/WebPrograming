<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/orijin.css">

    <title>ログイン画面</title>
  </head>
  <body><div class="container">
  <c:if test="${errMsg != null}" >
	    <div class="alert alert-danger" role="alert">
		  ${errMsg}
		</div>
	</c:if>
  	<div class = "loginTop">
<h1 class="text-center">ログイン画面</h1></div>
<br>
<br>

<div class="loginForm">
<form action="LoginServlet" method="post">
  <div class="form-group row">
    <label for="inputLogin_ID" class="col-sm-4 col-form-label font-weight-bold">ログインID</label>
    <div class="col-sm-8">
      <input type="text" name = "loginId" class="form-control" id="inputloginId" placeholder="ログインID">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-4 col-form-label font-weight-bold">パスワード</label>
    <div class="col-sm-8">
      <input type="password" name = "password" class="form-control" id="inputPassword" placeholder="パスワード">
    </div>
  </div>

  <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">ログイン</button>

</form>
</div>

<br>
<br>
<br>




</div>

</html>