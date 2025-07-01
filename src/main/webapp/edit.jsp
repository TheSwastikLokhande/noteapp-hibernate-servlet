<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.helper.*,org.hibernate.*,com.entities.Note"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_js_css.jsp"%>

</head>
<body>

	<div class="container">
	<%@ include file="Navbar.jsp"%>
	<h1>This is Edit Page</h1>

	<%
	int noteId = Integer.parseInt(request.getParameter("note_id"));
	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, noteId);
	%>

	<form action="UpdateNoteServlet" method="post">
	
	<input type="hidden" value="<%= note.getId() %>"  name="noteId" />
		<div class="form-group">
			<label for="exampleInputEmail1">Note Title</label> 
			<input type="text"class="form-control" id="title" name="title"
				value="<%= note.getTitle() %>">
		</div>

		<div>
			<label for="content">Note Content</label>

			<textarea id="content" class="form-control" name="content" style="height: 300px;"><%= note.getContent() %></textarea>

		</div>

		<div class="container text-center">
			<button type="submit" class="btn btn-primary mt-3">Save Your Note</button>
		</div>

	</form>
	</div>
</body>
</html>