<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@page import="java.sql.*,java.util.*"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href=" https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"rel="stylesheet">
<link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<title>Menu Page</title>
</head>
<body>
<script>

$(document).ready( function () {
    $('tbl').DataTable("processing": true;
    	);
} );
</script>

<div class="jumbotron bg-primary">
<h1 style=" text-align:center"> MENU</h1>
</div>
<br>

         <i class="fas fa-arrow-circle-left"><a href="Analytics.jsp">Back></a></i>

<br>
<!-- ------------------------------------------------------------------------------------------------------------------------------------------ -->
<%
response.setIntHeader("Refresh", 20);
HttpSession asession=request.getSession(); 

%>





<table id="tbl" class="table table-striped table-bordered table-hover " style="width:100%; box-shadow: 5px 8px 8px 5px rgba(0, 0, 0, 0.2);">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th> Food Name</th>
                <th>Food Serving</th>
                <th>Food Price</th>
               </tr>
           </thead>
        <tbody>
          <%
          response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");  
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/restpos";
String username="root";
String password="root";
String query="select * from menu";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr>
    <td><%=rs.getInt("Id") %></td>
    <td><%=rs.getString("Foodname") %></td>
    <td><%=rs.getInt("Quantity") %></td>
    <td><%=rs.getFloat("Price") %></td>
    </tr>
        <%

}
%>
</tbody>
    </table>
 <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%>


 <br>
 <div class="container">
  <div class="row">
    <div class="col">
      <div class="card">
  <div class="card-body">
    <h5>Add Items</h5>
    <form class="form-signin" action="Menu" method="post">
      <div class="modal-body">
    
        <label for="inputEmail">Food Name</label>
                <input type="text"  class="form-control input-group-sm" name="fname" placeholder="Item name" >
                <label for="inputEmail">Quantity</label>
                <input type="text"  class="form-control input-group-sm" name="fqty" placeholder="Item qty" >
                <label for="inputEmail">Price</label>
                <input type="text"  class="form-control input-group-sm" name="fpric" placeholder="Item price" >
                <br>
              <button class="btn btn-lg btn-primary  text-uppercase" type="submit">Submit data</button>
                
      </div>
      </form>
  </div>
</div>
      
    </div>
    <div class="col">
      
     <div class="card">
  <div class="card-body">
   <h4>Delete items</h4>
    <form class="form-signin" action="delete" method="post">
      <div class="modal-body">
    
        <label for="inputEmail">Food id</label>
                <input type="text"  class="form-control input-group-sm" name="fid" placeholder="Item id" >
                
                <br>
              <button class="btn btn-lg btn-primary  text-uppercase" type="submit">Delete data</button>
                
      </div>
      </form>
  </div>
</div>
    </div>
</div>
</div>
<br>
      
    
    
   
</body>
</html>