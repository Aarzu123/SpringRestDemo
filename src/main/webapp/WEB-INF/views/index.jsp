<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>News CRUD Spring</title>
</head>
<body onload="">
	<div class="container">
		<div class="jumbotron" style="margin: 45px 0px">
			<h2 class="text-center">Note CRUD APP</h2>
		</div>

		<form method="POST" action="saveNote" modelAttribute="note">

			<div class="form-group">
				<label for="noteid">Name</label> <input type="text"
					class="form-control" id="name" aria-describedby="name"
					placeholder="Name" name="noteId">
			</div>

			<div class="form-group">
				<label for="exampleInputTitle">Author</label> 
				<input type="text"
					class="form-control" id="author" aria-describedby="author"
					placeholder="Author" name="author">
			</div>
			
			<div class="form-group">
				<label for="Description"></label> 
				<input type="text" class="form-control" id="decs"
					placeholder="Description" name="description">
			</div>
			
			<div class="form-group">
				<label for="">Content</label> 
				<input type="text" class="form-control" id="content"
					placeholder="Content" name="content">
			</div>

			<button type="submit" class="btn btn-primary">Add News</button>
		</form>


		<div style="margin-top: 1em; text-align: center">
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">Newsid</th>
						<th scope="col">Name</th>
						<th scope="col">Author</th>
						<th scope="col">Description</th>
						<th scope="col">Published At</th>
						<th scope="col">Content</th>
					</tr>
				</thead>
				<tbody id='table-body'>
					<c:forEach items="${newsList1}" var="newsobj">
						<tr>
							<td>${newsobj.newsid}</td>
							<td>${newsobj.name}</td>
							<td>${newsobj.author}</td>
							<td>${newsobj.description}</td>
						    <td>${newsobj.publishedAt}</td>
							<td>${newsobj.content}</td>
							<td>Update</td>
							<td>Delete</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
</body>
</html>