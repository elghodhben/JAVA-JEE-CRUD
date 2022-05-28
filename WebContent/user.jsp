<%@page import="model.User"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</head>
<body>
<%
Vector<User> liste = (Vector<User>) request.getAttribute("users");

%>
<div class="card text-right">
  <div class="card-header">
    <a href="saisie.jsp" class="btn btn-primary"><i class="fa-thin fa-trash-can"> Add</i> </a>
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
<td>Action</td>
</tr>
</thead>
<tbody>
<%
for(User u : liste)
{
%>
<tr>
<td><%= u.getId() %></td>
<td><%= u.getNom() %></td>
<td><%= u.getPrenom() %></td>
<td><%= u.getEmail() %></td>
<td>
<a href ="liste?id=<%= u.getId()  %>" class="btn btn-info" ><i class="fa-thin fa-trash-can">Display</i></a> <span/>
<a href ="updat?id=<%= u.getId()  %>" class="btn btn-warning" ><i class="fa-thin fa-trash-can">Update</i></a><span/>
<a href ="delete?id=<%= u.getId()  %>" class="btn btn-danger" ><i class="fa-thin fa-trash-can">Delete</i></a>

</td>
</tr>


<%
}
%>
</tbody>
</table>









</div>
</div>
</body>
</html>