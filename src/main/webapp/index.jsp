<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<title>Note Tacker Home Page</title>

<%@ include file="all_js_css.jsp"%>
</head>
<body>


	<div class="container">
		<%@ include file="Navbar.jsp"%>

		<div class="jumbotron mt-4">
			<h1 class="display-4">Welcome to Note Tracker!</h1>
			<p class="lead">Your simple and secure place to create, update,
				and manage notes efficiently.</p>
			<hr class="my-4">
			<p>Click below to get started by adding your first note or
				viewing all notes.</p>
			<a class="btn btn-primary btn-lg mr-2" href="add_notes.jsp"
				role="button">Add Note</a> <a class="btn btn-success btn-lg"
				href="all_notes.jsp" role="button">View All Notes</a>
		</div>


<div class="container mt-5">
  <h2 class="text-center mb-4">Features</h2>
  <div class="row">

    <!-- Card 1: Create Notes -->
    <div class="col-md-4">
      <div class="card shadow-sm">
        <div class="card-body text-center">
          <img src="img/create_note.png" alt="Create" style="width: 50px; margin-bottom: 15px;">
          <h5 class="card-title">Create Notes</h5>
          <p class="card-text">Easily write and save your thoughts, reminders, or to-do tasks.</p>
        </div>
      </div>
    </div>

    <!-- Card 2: Edit Notes -->
    <div class="col-md-4">
      <div class="card shadow-sm">
        <div class="card-body text-center">
          <img src="img/update_note.png" alt="Edit" style="width: 50px; margin-bottom: 15px;">
          <h5 class="card-title">Edit Notes</h5>
          <p class="card-text">Update your notes at any time with a single click.</p>
        </div>
      </div>
    </div>

    <!-- Card 3: Delete Notes -->
    <div class="col-md-4">
      <div class="card shadow-sm">
        <div class="card-body text-center">
          <img src="img/delete_image.png" alt="Delete" style="width: 50px; margin-bottom: 15px;">
          <h5 class="card-title">Delete Notes</h5>
          <p class="card-text">Remove unnecessary notes to keep your dashboard clean.</p>
        </div>
      </div>
    </div>

  </div>
</div>





	</div>

<footer class="text-center mt-5 mb-3">
  <p>&copy; 2025 Note Tracker App | Made with ❤️ by Sushant</p>
</footer>

</body>
</html>


