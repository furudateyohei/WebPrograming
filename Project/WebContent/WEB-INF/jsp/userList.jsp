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
  <p class="text-right">ユーザー名<span style="margin-right: 1em;"></span>さん
  <span style="margin-right: 8em;"></span>
  <a href="index.html" class="alert-link text-danger">ログアウト</a></p>
</div><br>
<br>
<h1 class="text-center">ユーザー覧</h1><br>

<br>
<div class="container">
<div class="searchForm">
<p class="text-right">
<a href="userInput.html" class="alert-link text-info">新規登録</a></p>
<form>
  <div class="form-group row">
    <label for="inputLogin_ID" class="col-sm-4 col-form-label font-weight-bold">ログインID</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="staticEmail" placeholder="ログインID">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-4 col-form-label font-weight-bold">ユーザ名</label>
    <div class="col-sm-8">
      <input type="password" class="form-control" id="inputPassword" placeholder="ユーザ名">
    </div>
  </div>
  <div class="form-group row">
    <label for="birth_date" class="col-sm-4 col-form-label font-weight-bold">生年月日</label>
    <div class="col-sm-8 row">
       <div class="col-sm-5">
         <input type="date" name="calendar" max="9999-12-31" class="form-control">
       </div>
       <div class="col-sm-2">
         ～
       </div>
       <div class="col-sm-5">
         <input type="date" name="calendar" max="9999-12-31" class="form-control">
       </div>
      </div>
     </div>
</form>
</div>
<br>
<br>
<p class="text-right"><button type="submit" class="btn btn-outline-primary">検索</button></p>


<table class="table table-striped">
  <thead>
    <tr><th scope="col">ログインID</th>
      <th scope="col">ユーザー名</th>
      <th scope="col">生年月日</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td scope="row">00001</td>
      <td>Mark</td>
      <td>○○年○月○日</td>
      <td>
      <a class="btn btn-primary" href="priUser.html" role="button">詳細</a>
      <a class="btn btn-success" href="userUpdate.html" role="button">更新</a>
      <a class="btn btn-danger" href="userDelete.html" role="button">削除</a>
    </tr>
    <tr>
      <td scope="row">00002</td>
      <td>Jacob</td>
      <td>○○年○月○日</td>
      <td><button type="button" class="btn btn-primary">詳細</button>
      <button type="button" class="btn btn-success">更新</button>
      <button type="button" class="btn btn-warning">削除</button></td>
    </tr>
    <tr>
      <td scope="row">00003</td>
      <td>Larry</td>
      <td>○○年○月○日</td>
      <td><button type="button" class="btn btn-primary">詳細</button>
      <button type="button" class="btn btn-success">更新</button>
      <button type="button" class="btn btn-warning">削除</button></td>
    </tr>
  </tbody>
</table>


</div>

</body>
</html>