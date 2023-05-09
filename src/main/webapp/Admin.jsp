<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="cse.web.model.User"%>
<%@page import="cse.web.model.Course"%>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Create Course</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	<style>
	
		.navbar {
		  	background: #fff;
		  	box-shadow: 0 4px 6px rgba(22, 22, 26, 0.18);
		}
		.navbar .navbar-nav .nav-link {
		  	color: #000;
		}
		.btn-outline-dark {
		  	border-radius: 0;
		}
		.btn-outline-dark:focus {
		  	box-shadow: none;
		}
		@media screen and (max-width: 768px) {
		  .btn-outline-dark {
		    border: none;
		    padding: 0;
		    outline: none;
		  }
		
		  .btn-outline-dark:hover {
		    background: none;
		    color: gray;
		  }
		}
			
	
	
	
		.main_container{
			background-image: url('https://img.freepik.com/free-vector/blue-abstract-gradient-wave-vector-background_53876-111548.jpg?w=1380&t=st=1680114097~exp=1680114697~hmac=9322b506e3ad7e7b9772c7f969f1c1706bc3891c6f108356dfec0d8144d016b5');
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			min-height: 100vh;
		}
		
		.form_container{
			padding-top: 6rem;
		}
	
	
		.cardd {
			position: relative;
		
			height: 170px;
			background: url("https://img.freepik.com/premium-photo/back-school-concept-colored-pencil-supplies-wooden-table_117358-75.jpg?w=740"),
				#ffffff;
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			border-radius: 25px;
			margin: 10px;
			transition: 0.25s ease-in;
		}

		.cardd .overlay {
			position: absolute;
			top: 0;
			bottom: 0;
			width: 100%;
			height: 170px;
			background: linear-gradient(
				120.55deg,
				rgba(39, 39, 39, 0.38) 0%,
				rgba(39, 39, 39, 0.2394) 100%
			);
			border-radius: 25px;
		}
		
		.cardd .content {
			position: absolute;
			bottom: 10px;
			left: 25px;
		}
		
		.cardd .content h4 {
			font-family: Ubuntu;
			font-style: normal;
			font-weight: bold;
			font-size: 18px;
			color: #f2f2f2;
			margin-bottom: 10px;
			margin-top: 0;
		}
		
		.cardd .content h6 {
			font-family: Ubuntu;
			font-style: normal;
			font-weight: 500;
			font-size: 14px;
			color: #f2f2f2;
			margin-bottom: 10px;
			margin-top: 0;
		}
		
		.cardd .fav {
			position: absolute;
			top: 25px;
			right: 25px;
			cursor: pointer;
		}
		
		.cardd .fav i {
			color: white;
		}
		
		.cardd:hover {
			transform: scale(1.05);
		}
		
		.cardd:hover {
			background-position: top;
		}
	
		
	
	</style>
	
</head>
<body>

	<nav class="navbar fixed-top navbar-expand-lg navbar-light">
		  <div class="container-fluid">
		  
			    <a class="navbar-brand fw-bold mx-5" href="index.jsp">Classmate</a>
			    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    
				      <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
					        <li class="nav-item">
					          <a class="nav-link active" aria-current="page" href="/Classmate-Web/dashboard">Home</a>
					        </li>
					        <li class="nav-item">
					          <a class="nav-link" href="/Classmate-Web/createCourse">Course</a>
					        </li>
				      </ul>
				      
			      	<form action="/Classmate-Web/logout" method="post">
				    	
				    	<button class="btn btn-lg btn-primary btn-sm mx-5" style="background-color: #237A57; color:  white; box-shadow: none;">Logout</button>
				    	
				    </form>
			      
			    </div>
			    
		  </div>
		  
	</nav>
	
	
	<div class="main_container">
	
	
		<div class="container form_container">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<div class="card">
						<img src="https://img.freepik.com/free-vector/geometric-science-education-background-vector-gradient-blue-digital-remix_53876-125993.jpg?size=626&ext=jpg&ga=GA1.2.682301928.1680085921&semt=ais" style="height: 10rem">
						<div class="card-header">
							<h4 class="card-title text-center py-2">Create Course</h4>
						</div>
						<div class="card-body">
							<form action="/Classmate-Web/createCourse" method="post">
								<div class="mb-3">
									<label for="courseName" class="form-label">Course Name</label>
									<input type="text" class="form-control" id="courseName" name="courseName" placeholder="Enter course name">
								</div>
								<div class="row mb-3">
									<div class="col">
										<label for="courseCode" class="form-label">Course Code</label>
										<input type="tel" class="form-control" id="courseCode" name="courseCode" placeholder="Enter course code">
									</div>
									<div class="col">
										<label for="usn" class="form-label">USN</label>
										<select class="form-select" id="usn" name="usn">
											<option value="" selected disabled>Select USN</option>
											<option value="2023-1">2023-1</option>
											<option value="2023-2">2023-2</option>
											<option value="2024-1">2024-1</option>
											<option value="2024-2">2024-2</option>
											<option value="2025-1">2025-1</option>
										</select>
									</div>
								</div>
								<div class="mb-3">
									<label for="courseTeacher" class="form-label">Course Teacher</label>
								
									<select class="form-select" id="courseTeacher" name="courseTeacher">
										<option value="" selected disabled>Select Course Teacher</option>
										<% for (User teacher : (List<User>) request.getAttribute("teachers")) { %>
										<option value="<%=teacher.getID()%>"><%=teacher.getUsername()%> - <%=teacher.getDepartment()%></option>
										<% } %>
									</select>
								</div>
								
								<button type="submit" class="btn" style="background-color:  #237A57; color:  white; box-shadow: none;">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		<div class="container py-4">
			<div class="row justify-content-center">
	 
				<h4 class="card-title text-center  py-4">Available Courses</h4>
	 
				
				<% for (Course course : (List<Course>) request.getAttribute("courses")) { %>
				
					<div class="col-lg-4 col-md-6 col-sm-12">
						<div class="cardd">
		 
							<div class="overlay"></div>
							<div class="card-body">
								<h4 class="card-title text-white"><%=course.getCourseName()%></h4>
								<h6 class="card-subtitle mb-2 text-white"><%=course.getCourseCode()%> | <%=course.getUSN()%></h6>
								<h6 class="card-subtitle mb-2 text-white"><%=course.getCourseTeacher()%></h6>
							</div>
							<div class="fav">
								<a href="/Classmate-Web/courseDetail?name=<%=course.getCourseName()%>&code=<%=course.getCourseCode()%>&usn=<%=course.getUSN()%>&teacher=<%=course.getCourseTeacher()%>">
									<i class='fa-sharp fa-solid fa-arrow-right' style='font-size:24px;color:white '></i>
								</a>
							</div>
						</div>
					</div>
				
				<% } %>
				
			</div>
		</div>
	
		
		
		
		
		
		
	
	</div>
	
	
	
	
	
	
	

	

</body>
</html>