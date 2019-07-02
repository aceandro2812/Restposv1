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
<title>Restaurant Management System</title>
</head>
<body style="background: linear-gradient(to right, #ffff00 0%, #ff9966 95%);">
<%response.setIntHeader("Refresh", 10); %>
<i class="fas fa-arrow-circle-left"><a href="Analytics.jsp">Back></a></i>
<div class="container card"style="border-radius:40px;">
  <div class="card-body">
    <h5>Add Orders</h5>
    <form class="form-signin" action="order" method="post">
      
    
        <label for="inputEmail">Food Name</label>
                <input type="text"  class="form-control input-group-sm" name="fname" placeholder="Item name" >
                <label for="inputEmail">Quantity</label>
                <input type="text"  class="form-control input-group-sm" name="fqty" placeholder="Item qty" >
                <label for="inputEmail">Customer Name</label>
                <input type="text"  class="form-control input-group-sm" name="cname" placeholder="Customer Name" >
                <label for="inputEmail">Table No</label>
                <input type="text"  class="form-control input-group-sm" name="tno" placeholder="Table No" >
                <label for="inputEmail">Email id</label>
                <input type="text"  class="form-control input-group-sm" name="email" placeholder="Email id" >
                <br>
              <button class="btn btn-lg btn-primary  text-uppercase" type="submit"style="border-radius:40px;">Submit data</button>
                
      
      </form>
      
  </div>
  </div>
  <div class="container card"style="border-radius:40px;width: 25rem;margin-top:14px;">
 <div style="border-radius:40px;padding-top:10px;padding-bottom:15px;">
    
    <form class="form-signin" action="Invoice.jsp" method="post">
   <label for="inputEmail">Check out Customer email</label>
                <input type="text"  class="form-control input-group-sm" name="email" placeholder="Name" style="padding-bottom:15px;" >
  <button class="btn btn-lg btn-primary  text-uppercase" type="submit"style="border-radius:40px;padding-bottom:15px;margin-top:14px;">Submit data</button>
 </form>
 </div>
</div>
</body>
</html>