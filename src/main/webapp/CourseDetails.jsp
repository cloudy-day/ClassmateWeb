<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="cse.web.model.User"%>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Course Information</title>
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
	
		.container {
			margin-top: 100px;
			background-color: #F8F9FA;
			border-radius: 10px;
			padding: 40px;
			box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
		}

		h1 {
			font-size: 30px;
			font-weight: bold;
			margin-bottom: 20px;
			color: #237A57;
		}

		p {
			font-size: 18px;
			line-height: 1.5;
			margin-bottom: 10px;
		}

		.table {
			margin-top: 30px;
		
		}

		.table th {
			width: 33.33%;
			font-size: 18px;
			font-weight: bold;
			background-color: #E9ECEF;
			border: none;
			padding: 15px;
			vertical-align: middle;
		}

		.table td {
			width: 33.33%;
			font-size: 16px;
			padding: 15px;
			border: none;
			vertical-align: middle;
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
			    		
			    	<% String role = (String) session.getAttribute("role");%>
				      <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
				      		<% if (role.equals("Student") || role.equals("Teacher")) {%>
					        <li class="nav-item">
					          <a class="nav-link active" aria-current="page" href="/Classmate-Web/dashboard">Course</a>
					        </li>
					        <li class="nav-item">
					          <a class="nav-link" href="/Classmate-Web/profile">Profile</a>
					        </li>
					        <% } else { %>
					        <li class="nav-item">
					          <a class="nav-link active" aria-current="page" href="/Classmate-Web/dashboard">Home</a>
					        </li>
					        <li class="nav-item">
					          <a class="nav-link" href="/Classmate-Web/createCourse">Course</a>
					        </li>
					        <% } %>
					        
					        
				      </ul>
				    
				    <form action="/Classmate-Web/logout" method="post">
				    	
				    	<button class="btn btn-lg btn-primary btn-sm mx-5" style="background-color: #237A57; color:  white;">Logout</button>
				    	
				    </form>
				      
		     		
			      
			    </div>
			    
		  </div>
		  
	</nav>
	

	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h1>Course Information</h1>
				<p><strong>Course Name : </strong><%= request.getAttribute("courseName") %></p>
				<p><strong>Course Code : </strong><%= request.getAttribute("courseCode") %></p>
				<p><strong>USN : </strong><%= request.getAttribute("usn") %></p>
				<p><strong>Course Instructor : </strong><%= request.getAttribute("teacher") %></p>
				<p><strong>Enrolled Students : </strong><%= request.getAttribute("total") %></p>
				
			</div>
			<div class="col-md-4">
				<img src="https://png.pngtree.com/png-clipart/20221026/original/pngtree-geography-class-with-a-world-map-png-image_8728351.png" alt="Course Image" style="Width: 300px;height: 250px;">
			</div>
		</div>
		<div class="row py-4">
			<div class="col-md-12">
				<h1>Registered Students</h1>
				<table class="table">
					<thead class="text-center">
						<tr>
							<th>Serial No</th>
							<th>Name</th>
							<th>Registration</th>
						</tr>
					</thead>
					<tbody class="text-center">
					
						<% int cnt = 1;%>
						
						<% for (User user : (List<User>) request.getAttribute("users")) { %>
						
							<tr>
								<td><%= cnt %></td>
								<td><%=user.getName()%></td>
								<td><%=user.getUsername()%></td>
							</tr>
							<% cnt++; %>
						
						<% } %>
						<!-- Add more rows for additional registered students -->
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>