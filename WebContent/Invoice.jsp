<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Restaurant Management System</title>
</head>
<body>
<i class="fas fa-arrow-circle-left"><a href="Analytics.jsp">Back></a></i>
<div class="jumbotron bg-primary">
<h1 style=" text-align:center">Invoice</h1>
</div>



<table id="tbl" class="table table-striped table-bordered table-hover " style="width:100%; box-shadow: 5px 8px 8px 5px rgba(0, 0, 0, 0.2);">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th> Food Name</th>
                <th>Food Serving</th>
                 <th>Table no</th>
                  <th>Customer Email</th>
                <th>Food Price</th>
               </tr>
           </thead>
        <tbody>
          <%
          response.setIntHeader("Refresh", 10);
          response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");  
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/restpos";
String username="root";
String password="root";
String query="Select Orderid,Orders.Foodname,Orders.Quantity,Tableno,Custemail,menu.Price from Orders,menu WHERE menu.Foodname=Orders.Foodname";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr>
    <td><%=rs.getInt("Orderid") %></td>
    <td><%=rs.getString("Foodname") %></td>
    <td><%=rs.getInt("Quantity") %></td>
    <td><%=rs.getInt("Tableno") %></td>
    <td><%=rs.getString("Custemail") %></td>
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
</body>
</html>