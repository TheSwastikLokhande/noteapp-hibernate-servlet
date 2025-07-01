<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<h1>Please add note details</h1>
		<!-- form  -->
		<form action="SaveNoteServlet" method="post">

			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> <input
					type="text" class="form-control" id="title" name="title"
					placeholder="Enter note tile here">
			</div>

			<div>
				<label for="content">Note Content</label>
					
					<textarea id="content" class="form-control" name="content"
					placeholder="Enter Here" style="height: 300px;">
					
					</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">ADD</button>
			</div>
			
		</form>
	</div>
</body>
</html>

