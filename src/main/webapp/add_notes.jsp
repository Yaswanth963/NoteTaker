<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allfiles.jsp"%>
</head>
<body>
	<div class="container p-0">
		<%@include file="navbar.jsp"%>
		<h2>Please fill in your details</h2>
		<br>
		<!-- form  -->

		<form action="SaveNoteServlet" method="post">
			<div class="mb-3">
				<label for="title" class="form-label"> Note Title</label> <input
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here" required
					name="title">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea class="form-control" style="height: 300px" id="content"
					name="content">
    </textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>
</html>