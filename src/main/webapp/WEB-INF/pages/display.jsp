<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
<style>
.header{
text-align:center;
float:center;
}
input[type="text"]{
width:200px;
height:24px;
color:black;
border:solid 1px black;
border-radius:2px;
margin:5px;
}
input[type="file"]{
width:200px;
height:23px;
color:black;
border:solid 1px black;
border-radius:2px;
margin:5px;
}
input[type="submit"]{
width:100px;
height:30px;
background-color: black;
color:white;
border:solid 1px white;
border-radius:3px;
cursor: pointer;
margin:5px;
}
a{
float:right;
margin-right:40px;
}
input[type="button"]{
width:120px;
height:30px;
background-color: black;
color:white;
border:solid 1px white;
border-radius:3px;
cursor: pointer;
margin:5px;
}

</style>
</head>
<body>
<div align="center">
<h3>Book Feedback Form:</h3>
<hr />
<h3>
<a href="go_back"><input type="button" value="Go back..." /></a>
</h3><br /><br /><br />
<form action="feedback" method="post">
<table width="400">
<tr>
    <td>Book Id :</td>
	<td><input type="text" name="book_id" id="book_id" /></td>
	</tr>
    <tr>
    <td>Book Title :</td>
	<td><input type="text" name="book_title" id="book_title"  /></td>
	</tr>
    <tr>
    <td>Book Author :</td>
	<td><input type="text" name="book_author" id="book_author" /></td>
	</tr>
	<tr>
    <td>ISBN no :</td>
	<td><input type="text" name="isbn_no" id="isbn_no" /></td>
	</tr>
	<tr>
    <td>Book Image :</td>
	<td><input type="file" name="book_file" id="book_file"   /></td>
	</tr>
	<tr>
    <td>Cell no:</td>
	<td><input type="text" name="cell_no" id="cell_no"  /></td>
	</tr>
	<tr>
    <td>Row no:</td>
	<td><input type="text" name="row_no" id="row_no"  /></td>
	</tr>
	<tr>
    <td></td>
	<td><input type="submit" value="Send..." /></td>
	</tr>
</table> 
</form>

<br /><br />

<h3>${status}</h3>
<h3>${remove_status}</h3>
<h4>
<table width="600" border="1">
<tr>
<th>Book Id</th>
<th>Book Title</th>
<th>Book Author</th>
<th>ISBN no</th>
<th>Book Image</th>
<th colspan="2">Action</th>
</tr>
<c:forEach var="book_view" items="${book_view}">
<tr>
<td>${book_view.book_id}</td>
<td>${book_view.book_title}</td>
<td>${book_view.book_author}</td>
<td>${book_view.isbn_no}</td>
<td>
<%-- <img src="${book_view.book_file}" width="80px" height="80px" /> --%>
${book_view.book_file}
</td>
<td><a href="edit?edit=${book_view.book_id}">Edit</a></td>
<td><a href="remove?remove=${book_view.book_id}">Delete</a></td>
</tr>
</c:forEach>
</table>
</h4>
























<%-- <h5>
<c:forEach var="listOfMap" items="${status}">
<c:forEach var="mapBook" items="${listOfMap}">
${mapBook.key} ..... ${mapBook.value}
</c:forEach>
</c:forEach>
</h5> --%>
<!-- <script type="text/javascript" src="js/effect.js"></script> -->
</div>
</body>
</html>