<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/1300453138.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slim.js/3.3.4/Slim.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.css" />
<title>Restaurant Management system</title>
</head>
<body>
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); %>
<div class="container">
    <div class="row"style=" border-radius: 25px;">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Sign In</h5>
            <form class="form-signin" action="login" method="post">
              <div class="form-label-group">
               <label for="inputEmail">UserName</label>
                <input type="text" id="inputusername" class="form-control input-group-sm" name="uname" placeholder="UserName" >
               
              </div>

              <div class="form-label-group">
               <label for="inputPassword">Password</label>
                <input type="password" id="inputPassword" class="form-control" name="upass" placeholder="Password" required>
                 
               
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
             
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>