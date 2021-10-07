<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.entities.*"%>
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
	<div class="container">
		<h1>Edit your note..</h1>
		<%@include file="navbar.jsp"%>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id"));
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		Note note = s.get(Note.class, noteId);
		%>
		<form action="UpdateServlet" method="post">
			<input value="<%=note.getId()%>" name="noteId" type="hidden" />
			<div class="mb-3">
				<label for="title" class="form-label"> Note Title</label> <input
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here" required
					name="title" value=<%=note.getTitle()%>>
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea class="form-control" style="height: 300px" id="content"
					name="content">
    <%=note.getContent()%>
    </textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Note</button>
			</div>
		</form>
	</div>
</body>
</html>