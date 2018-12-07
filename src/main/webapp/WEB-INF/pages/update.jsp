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
      <h1>Book Feedback Form</h1>
      <br />
   <form class="form-inline" action="feedback" method="post">
    <div class="form-group">
      <label class="" for="book_id">Book Id:</label>
      <input type="text" class="form-control" id="book_id" placeholder="Enter Book Id"  name="book_id" value="${edit_view.book_id}">
    </div><br /><br />
    <div class="form-group">
      <label class="" for="pwd">Book Title:</label>
      <input type="text" class="form-control" id="book_title" placeholder="Enter Book Title" name="book_title" value="${edit_view.book_title}">
    </div><br /><br />
    <div class="form-group">
      <label class="" for="book_author">Book Author:</label>
      <input type="text" class="form-control" id="book_author" placeholder="Enter Book Author" name="book_author" value="${edit_view.book_author}">
    </div><br /><br />
    <div class="form-group">
      <label class="" for="isbn_no">Book Author:</label>
      <input type="text" class="form-control" id="isbn_no" placeholder="Enter Book Isbn no" name="isbn_no" value="${edit_view.isbn_no}">
    </div><br /><br />
    <div class="form-group">
      <label class="" for="book_file">Book Author:</label>
      <input type="file" class="form-control" id="book_file" placeholder="" name="book_file" value="">
    </div><br /><br />
    <div class="form-group">
      <label class="" for="cell_no">Book Author:</label>
      <input type="text" class="form-control" id="cell_no" placeholder="Enter Cell no" name="cell_no" value="${edit_view.cell_no}">
    </div><br /><br />
    <div class="form-group">
      <label class="" for="row_no">Book Author:</label>
      <input type="text" class="form-control" id="row_no" placeholder="Enter Row no" name="row_no" value="${edit_view.row_no}">
    </div><br /><br />
    <button type="submit" class="btn btn-default" >Submit</button>
  </form>
      
    </div>
  </div>
</div>
<br /><br />
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
