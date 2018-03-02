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
<div class="alert alert-primary" role="alert">
  <p class="text-right">ユーザー名<span style="margin-right: 1em;"></span>さん<span style="margin-right: 8em;"></span><a href="#" class="alert-link text-danger">ログアウト</a></p>
</div><br>
<br>
<h1 class="text-center">ユーザ情報更新</h1><br>
<div class="loginForm">
<form>
  <div class="form-group row">
    <label for="inputLogin_ID" class="col-sm-4 col-form-label font-weight-bold">ログインID</label>
    <div class="col-sm-8">
    	<input type="text" readonly class="form-control-plaintext"  value="00001">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-4 col-form-label font-weight-bold">パスワード</label>
    <div class="col-sm-8">
      <input type="password" class="form-control" id="inputPassword" placeholder="パスワード">
    </div>
  </div>
  	<div class="form-group row">
    <label for="inputPassword" class="col-sm-4 col-form-label font-weight-bold">パスワード（確認）</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="staticEmail" placeholder="パスワード（確認）">
    </div>
  </div>
  	<div class="form-group row">
    <label for="name" class="col-sm-4 col-form-label font-weight-bold">ユーザ名</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="staticEmail" placeholder="ユーザ名">
    </div>
  </div>
  	<div class="form-group row">
    <label for="birth_date" class="col-sm-4 col-form-label font-weight-bold">生年月日</label>
    <div class="col-sm-8">
      <input type="date" name="calendar" max="9999-12-31" class = "form-control">
    </div>
  </div>
  <p class="text-center"><button type="submit" class="btn btn-outline-primary">登録</button></p>
  <br>
  <p class = "text-left"><a href="UserIndex.html" class="alert-link text-primary">戻る</a></p>
</form>
</div>
</body>
</html>