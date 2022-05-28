<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Vector ,  model.User" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<body>
<%
User liste = (User) request.getAttribute("user") ; 
%>

<div class="card text-right">
  <div class="card-header">
    <h4>View user data</h4>

 </div>

<div class="card-body">
<div class="shadow-lg p-3 mb-5 bg-body rounded">
<table class="table table-striped">
<thead>
<tr>
<td>ID</td>
<td>Name</td>
<td>LastName</td>
<td>Email</td>

</tr>
</thead>
<tbody>

<tr>
	<td><%= liste.getId() %></td>
	<td><%= liste.getNom() %></td>
	<td><%= liste.getPrenom() %> </td>
	<td><%= liste.getEmail() %></td></tr>


</tbody>
 </table>
 
      <a href="users" class="btn btn-secondary"><i class="fa-thin fa-trash-can"> Return </i> </a>
 </div>
 </div>
 </div>
</body>
</html>