<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Home</title>
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
    	.card {
		  border: none;
		  border-radius: 10px;
		  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		  transition: all 0.3s ease-in-out;
		  height: 10rem;
		  width:  12rem;
		}
		
		.card:hover {
		  transform: translateY(-5px);
		  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
		}
		
		.card-header {
		  background-color: #F8F9FA;
		  font-weight: bold;
		  font-size: 1.2rem;
		  text-transform: uppercase;
		}
		
		.card-title {
		  font-size: 2.5rem;
		  font-weight: bold;
		  margin-bottom: 0;
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
				    	
				    	<button class="btn btn-lg btn-primary btn-sm mx-5" style="background-color: #237A57; color:  white;">Logout</button>
				    	
				    </form>
			      
			    </div>
			    
		  </div>
		  
	</nav>
	
	<div class="main_container">
	<div class="container d-flex align-items-center justify-content-center" style="height: 100vh;">
	  <div class="row">
	    <div class="col">
	      <div class="card text-center" style="color: #237A57">
	        <div class="card-header">Students</div>
	        <div class="card-body">
	          <h5 class="card-title"><%= request.getAttribute("totalStudents") %></h5>
	        </div>
	      </div>
	    </div>
	    <div class="col">
	      <div class="card text-center" style="color: #237A57">
	        <div class="card-header">Teachers</div>
	        <div class="card-body">
	          <h5 class="card-title"><%= request.getAttribute("totalTeachers") %></h5>
	        </div>
	      </div>
	    </div>
	    <div class="col">
	      <div class="card text-center" style="color: #237A57">
	        <div class="card-header">Courses</div>
	        <div class="card-body">
	          <h5 class="card-title"><%= request.getAttribute("totalCourses") %></h5>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	</div>


	

	
</body>
</html>