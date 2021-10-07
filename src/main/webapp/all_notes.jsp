<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes</title>
<%@include file="allfiles.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>All Notes</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card">

					<div class="card-body mt-3 px-5">
						<img src="img/notes.png" class="card-img-top m-4" alt="Note"
							style="max-width: 100px">
						<h5 class="card-title">
							<%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p class="text-primary">
							<b><%=note.getAddedDate()%></b>
						</p>
						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>
				<br>
				<%
				}
				s.close();
				%>


			</div>

		</div>

	</div>
</body>
</html>






