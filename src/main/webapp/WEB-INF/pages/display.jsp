<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Book FeedBack</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="feedback">Add Book</a></li>
        <li><a href="show">Show Book</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-12 text-center"> 
      <h1>Show Book Feedback</h1><br />
      <h3>${status}</h3>
      <h3>${remove_status}</h3>
      <br />
    <table class="table">
  <thead>
    <tr>
<th>Book Id</th>
<th>Book Title</th>
<th>Book Author</th>
<th>ISBN no</th>
<th>Book Image</th>
<th colspan="2">Action</th>
</tr>
  </thead>
  <tbody>
      <c:forEach var="book_view" items="${book_view}">
<tr>
<td>${book_view.book_id}</td>
<td>${book_view.book_title}</td>
<td>${book_view.book_author}</td>
<td>${book_view.isbn_no}</td>
<td>
<%-- <img src="${book_view.book_file}" width="80px" height="80px" />  --%>
${book_view.book_file}
</td>
<td><a href="edit?edit=${book_view.book_id}">Edit</a></td>
<td><a href="remove?remove=${book_view.book_id}">Delete</a></td>
</tr>
</c:forEach>
  </tbody>
</table>
  </div>
  </div>
</div>
<br /><br />
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
