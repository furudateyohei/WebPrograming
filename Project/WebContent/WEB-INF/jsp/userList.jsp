<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <head>
	<!-- Required meta tags -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/orijin.css">

<title>ユーザー一覧</title>
</head>
<body>
<div class="alert alert-primary" role="alert">
  <p class="text-right">${userinfo.name}さん
  <span style="margin-right: 8em;"></span>
  <a href="LogoutServlet" class="alert-link text-danger">ログアウト</a></p>
</div><br>
<br>
<h1 class="text-center">ユーザー覧</h1><br>

<br>
<div class="container">
<div class="searchForm">
<p class="text-right">
<a href="UserEntryServlet" class="alert-link text-info">新規登録</a></p>
<form action="UserListServlet" method="post">
  <div class="form-group row">
    <label for="inputLogin_ID" class="col-sm-4 col-form-label font-weight-bold">ログインID</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name="loginId" placeholder="ログインID">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputname" class="col-sm-4 col-form-label font-weight-bold">ユーザ名</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name = "username" id="inputname" placeholder="ユーザ名">
    </div>
  </div>
  <div class="form-group row">
    <label for="birth_date" class="col-sm-4 col-form-label font-weight-bold">生年月日</label>
    <div class="col-sm-8 row">
       <div class="col-sm-5">
         <input type="date" name="birthday_start" max="9999-12-31" class="form-control">
       </div>
       <div class="col-sm-2">
         ～
       </div>
       <div class="col-sm-5">
         <input type="date" name="birthday_end" max="9999-12-31" class="form-control">
       </div>
      </div>
     </div>

     <p class="text-right"><button type="submit" value ="検索" class="btn btn-outline-primary form-submit">検索</button></p>
</form>
</div>
<br>
<br>

</div>

<table class="table table-striped">
  <thead>
    <tr><th scope="col">　　　ログインID</th>
      <th scope="col">　　　ユーザー名</th>
      <th scope="col">　　　生年月日</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
   <c:forEach var="user" items="${userList}" >
    <tr>

      <td>　　　${user.loginId }</td>
      <td>　　　${user.name }</td>
      <td>　　　${user.birthDate }</td>

	<td>
	<c:if test = "${userinfo.loginId == 'admin'}" >
      <a class="btn btn-primary" href="UserInformationServlet?id=${user.id }" role="button">詳細</a>
      <a class="btn btn-success" href="UserUpdateServlet?id=${user.id }" role="button">更新</a>
      <a class="btn btn-danger" href="UserDeleteServlet?id=${user.id }" role="button">削除</a>
      </c:if>

       <c:if test= "${userinfo.loginId != 'admin'}">
      <a class="btn btn-primary" href="UserInformationServlet?id=${user.id }" role="button">詳細</a>
      <c:if test="${user.loginId == userinfo.loginId }">
      <a class="btn btn-success" href="UserUpdateServlet?id=${user.id}" role="button">更新</a>
      </c:if>
      </c:if>
    </td>
    </tr>
   </c:forEach>

  </tbody>
</table>

</body>
</html>