<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<% User user =(User)request.getAttribute("users"); %>

<div class="card text-right">
  <div class="card-header">
   <h4>User update</h4>
 </div>
<div class="card-body">
<div class="shadow-lg p-3 mb-5 bg-body rounded">

<form action="update" method="POST">

      <div class="form-group">
       <label class="control-label">ID  :</label>
       <input type="text" value="<%= user.getId() %>" readOnly name="id" class="form-control"/>
      </div>
      
      <div class="form-group">
       <label class="control-label">Name  :</label>
       <input type="text" value="<%= user.getNom() %>" required name="nom" class="form-control"/>
      </div>
      <div class="form-group">
       <label class="control-label">LastName :</label>
       <input type="text" value="<%= user.getPrenom() %>" required name="prenom" class="form-control"/>
      </div>
      
           <div class="form-group">
       <label class="control-label">Email  :</label>
       <input type="text" value="<%= user.getEmail() %>" required name="email" class="form-control"/>
      </div>
      <br>
      <div>
        <button type="submit" class="btn btn-warning">Update</button>
            <a href="users" class="btn btn-secondary"><i class="fa-thin fa-trash-can"> Return </i> </a>
      </div>
      </form>
      
           
</body>
</html>