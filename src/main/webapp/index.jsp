<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Classmate</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Custom CSS -->
    <style>
      
					
			html{
			  scroll-behavior: smooth;
			}
			
			
			.bg-black{
			  background: linear-gradient(109.6deg, rgb(36, 45, 57) 11.2%, rgb(16, 37, 60) 51.2%, rgb(0, 0, 0) 98.6%);
			
			}
			.text-white{
			    color:  white;
			}
			.text-black{
			    color:  black;
			}
			.bg-primary-orange{
			  background-color: #fec503;
			}
			.primary-orange{
			  color: #fec503;
			}
			.org-btn{
			  border: 1px solid #fec503;
			  color: #fec503;
			}
			.org-btn:hover{
			  background-color: #fec503;
			  color: white;
			}
			
			.light-grey{
			  color:#6c757d;
			}
			
			.bg-light-grey{
			  background-color: #6c757d:
			}
			
			.social-buttons-circle-dark-grey{
			  background:  #1a1d20;
			}
			
			
		   /* Navbar css code start */
			
			
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
			
			/* Navbar css code end */
			
			
			
			/* hero section start*/
			
			.center{
			  text-align: center;
			}
			
			/* hero section end*/
			
			
			
			
			
			
			
			
			
			
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
			
			
			
			
			
			
			
			/* Footer css code start */
			
			
			.foot{
			/*   position: relative; */
			   left: 0;
			   bottom: 0;
			   width: 100%;
			   background-color: #1a1d20;
			   color: white;
			   text-align: center;
			   top: 75px;
			}
			
			
			a {
			  color: #6c757d ;
			}
			a:hover {
			  color: #237A57;
			  text-decoration: none;
			}
			
			::selection {
			  background: #237A57;
			  text-shadow: none;
			}
			
			.footer-column {
			  text-align: center;
			}
			
			.nav-link {
		      padding: 0.1rem 0;
		    }
		    
		    
			span.nav-link {
		      color: #6c757d;
			}
			span.nav-link:hover {
		      color: #237A57;
	    	} 
	    	
			span.footer-title {
		      font-size: 14px;
		      font-weight: 700;
		      color: #fff;
		      text-transform: uppercase;
		    }
		    .fas {
		      margin-right: 0.5rem;
		    }
			
			footer {
			  padding: 2rem 0;
			  background-color: #212529;
			  
			}
			
			
			ul.social-buttons {
			  margin-bottom: 0;
			}
			
			ul.social-buttons li a:active,
			ul.social-buttons li a:focus,
			ul.social-buttons li a:hover {
			  background-color: #237A57;
			}
			
			ul.social-buttons li a {
			  font-size: 20px;
			  line-height: 40px;
			  display: block;
			  width: 40px;
			  height: 40px;
			  -webkit-transition: all 0.3s;
			  -moz-transition: all 0.3s;
			  transition: all 0.3s;
			  color: #fff;
			  border-radius: 100%;
			  outline: 0;
			  background-color:  #1a1d20;
			}
			
			footer .quick-links {
			  font-size: 90%;
			  line-height: 40px;
			  margin-bottom: 0;
			  text-transform: none;
			  font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
			}
			
			
			.copyright {
			  color: white;
			}
			
			.fa-ellipsis-h {
			  color: white;
			  padding: 2rem 0;
			}
			
			
			
			/* Footer css code end */
			
			
		
			
			
			
			
			
					
					
		
	
    </style>
    
    
  </head>
  
  <body>
  
  		<!-- Navbar section -->	
  		
		 <nav class="navbar fixed-top navbar-expand-lg navbar-light">
			  <div class="container-fluid">
			  
				    <a class="navbar-brand fw-bold mx-5" href="index.jsp">Classmate</a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				
				    
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
					      <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
						        <li class="nav-item">
						          <a class="nav-link active" aria-current="page" href=""></a>
						        </li>
						        
					      </ul>
					      
					      <%  	boolean ok = true; 
					      		try { 
					      			if((boolean) session.getAttribute("isLoggedIn")) { 
					      				ok = false;
					      			} 
					      		} catch(Exception e){ 
					      			System.out.println(e); 
					      		} 
					      %>
					      
					      <% if(ok) { %>
					      	<button class="btn btn-lg  btn-sm mx-5" style="background-color: #237A57; color:  white;box-shadow: none;" onclick="location.href='Login.jsp'">Login</button>
					      <% } else { %>
					      	<a href="/Classmate-Web/dashboard" class="btn btn-lg  btn-sm mx-5" style="background-color: #237A57; color:  white; box-shadow: none;"><%= session.getAttribute("username") %></a>
					      <% } %>
				    </div>
				    
			  </div>
		</nav>
		
		
		<!-- Hero section -->
		
		<div class="hero-container py-5" id="hero-sec">
			  <div class="container-fluid ">
					  <div class="row d-flex">
					  
						    <div class="col align-middle">
							      <div class="px-2 py-2">
							      <img src="https://img.freepik.com/free-vector/happy-freelancer-with-computer-home-young-man-sitting-armchair-using-laptop-chatting-online-smiling-vector-illustration-distance-work-online-learning-freelance_74855-8401.jpg?w=900&t=st=1667037491~exp=1667038091~hmac=7c71ea8afc8f3cc8065c5ccc05d105e3c8a7b76f0133016cb210a7882dc19611" class="img-fluid" alt="...">
							      </div>
						    </div>
						    
						    <div class="col">
							      <div class="px-5 py-5 mt-5">
							      
								        <div class="px-2 py-2 align-middle">
								        <h4>Get all your needs Here</h4>
								        <p> An online learning and teaching marketplace with over 204000 courses and 54 million students. Learn programming, marketing, data science and more.</p>
								        </div>
								        
								        <div class="px-2 py-2">
								          <button type="button" class="btn" style="background-color: #237A57; color:  white;box-shadow: none;">Checkout Our Courses</button>
								        </div>
							        
							      </div>
						      
						    </div>
						    
					</div>
				
			</div>
			
		</div>
		
		<!-- Teacher section -->
		  
		<div class="card-container bg-black" id="team">
		
			 <div class="container-fluid px-3 py-3">
			
				   <div class="row center mx-4 my-4 text-white">
					     <h2>Meet Our Expert</h2>
					     <p>Highly professional teachers</p>
				   </div>
				   
				   <div class="d-flex justify-content-center">
				     
					       <div class="card m-4" style="width: 18rem;">
					         	<img src="https://soeonline.american.edu/wp-content/uploads/sites/2/2022/08/blog-teacher-2018-960x640-1.jpg" alt="...">
					           <div class="card-body">
					              <h5 class="card-title">Prof. Sarah</h5>
					               <p class="card-text">A good teacher can inspire hope, ignite the imagination, and instill a love of learning.</p>
					              <a href="#" class="btn" style="background-color: #237A57; color:  white;">Go profile</a>
					           </div>
					       </div>
					     
					     
					      <div class="card m-4" style="width: 18rem;">
					         	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnTh8l4s0wNLacxsMNTFl0ZX6ZrBHotxBwocpsM2rLfBkv00SvKJW0W8bw78LfIMwEKY4&usqp=CAU" class="card-img-top" alt="...">
					           <div class="card-body">
					              <h5 class="card-title">Prof. Emily</h5>
					               <p class="card-text">A good teacher is like a candle – it consumes itself to light the way for others.</p>
					              <a href="#" class="btn" style="background-color: #237A57; color:  white;">Go profile</a>
					           </div>
					       </div>
					     
					     
					      <div class="card m-4" style="width: 18rem;">
					          	<img src="https://d19d5sz0wkl0lu.cloudfront.net/dims4/default/0c8a0a3/2147483647/thumbnail/1000x1000%3E/quality/90/?url=https%3A%2F%2Fatd-brightspot.s3.amazonaws.com%2F7f%2F38%2Fb37d0d6148e48fea8f76209eb3bb%2Fbigstock-pretty-teacher-smiling-at-came-69887626-1.jpg" alt="...">
					            <div class="card-body">
					               <h5 class="card-title">Prof. Rachel</h5>
					                <p class="card-text">A teacher affects eternity; he can never tell where his influence stops.</p>
					               <a href="#" class="btn" style="background-color: #237A57; color:  white;">Go profile</a>
					            </div>
					        </div>
				      
				  
				    </div>
			
			  </div>
		
		
		</div>

		  
		
		
		  
		 
		
		
		
		<!-- popular Course Section -->
		
		 <div class="card-container " id="courses">
		 
				 	<div class="container-fluid px-3 py-3">
				 	
					 		<div class="row center mx-4 my-4">
					 		
					 			<h2>Popular Courses</h2>
					 			<p>It's exciting to learn things!</p>
					 		
					 		
					 		</div>
					 		
					 		<div class="d-flex justify-content-center">
					 		
						 		<div class="col-lg-4 col-md-6 col-sm-12">
									<div class="cardd">
					 
										<div class="overlay"></div>
										<div class="card-body">
											<h4 class="card-title text-white">Database Design</h4>
											<h6 class="card-subtitle mb-2 text-white">CSE 333 | 2023-1</h6>
											<h6 class="card-subtitle mb-2 text-white">MD Rahim</h6>
										</div>
										<!-- <div class="fav">
											<a href="">
												<i class='fa-sharp fa-solid fa-arrow-right' style='font-size:24px;color:white'></i>
											</a>
										</div> -->
									</div>
								</div>
								
								
								<div class="col-lg-4 col-md-6 col-sm-12">
									<div class="cardd">
					 
										<div class="overlay"></div>
										<div class="card-body">
											<h4 class="card-title text-white">Algorithm</h4>
											<h6 class="card-subtitle mb-2 text-white">CSE 112 | 2023-2</h6>
											<h6 class="card-subtitle mb-2 text-white">MD Karim</h6>
										</div>
										<!-- <div class="fav">
											<a href="">
												<i class='fa-sharp fa-solid fa-arrow-right' style='font-size:24px;color:white'></i>
											</a>
										</div> -->
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 col-sm-12">
									<div class="cardd">
					 
										<div class="overlay"></div>
										<div class="card-body">
											<h4 class="card-title text-white">Competitive Programming</h4>
											<h6 class="card-subtitle mb-2 text-white">CSE 101 | 2024-1</h6>
											<h6 class="card-subtitle mb-2 text-white">MD Karim</h6>
										</div>
										<!-- <div class="fav">
											<a href="">
												<i class='fa-sharp fa-solid fa-arrow-right' style='font-size:24px;color:white'></i>
											</a>
										</div> -->
									</div>
								</div>
					 		</div>
		 	
		 		</div>
		
		 </div>
		 
		
		
		
		  
		
		
		<!-- footer -->
		
		<div class="footer-container foot">
			  <div class="container-fluid">
			 
				  <footer>
				    
					  <div class="row">
						   <div class="col-md-4 footer-column">
							        <ul class="nav flex-column">
								          <li class="nav-item">
								            <span class="footer-title">Product</span>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57">Product 1</a>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57">Product 2</a>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57">Plans & Prices</a>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57">Frequently asked questions</a>
								          </li>
							        </ul>
						     </div>
						     
						      <div class="col-md-4 footer-column">
							        <ul class="nav flex-column">
								          <li class="nav-item">
								            <span class="footer-title">Company</span>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57">About us</a>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57">Job postings</a>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57">News and articles</a>
								          </li>
							        </ul>
						      </div>
						      
						      
						      <div class="col-md-4 footer-column">
							        <ul class="nav flex-column" >
								          <li class="nav-item">
								            <span class="footer-title">Contact & Support</span>
								          </li>
								          <li class="nav-item">
								            <span class="nav-link"><i class="fas fa-phone"></i>+47 45 80 80 80</span>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57"><i class="fas fa-comments"></i>Live chat</a>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57"><i class="fas fa-envelope"></i>Contact us</a>
								          </li>
								          <li class="nav-item">
								            <a class="nav-link" href="#" style="color: #237A57"><i class="fas fa-star"></i>Give feedback</a>
								          </li>
							        </ul>
						      </div>
						      
						      
					    </div>
					
					    <div class="text-center"><i class="fas fa-ellipsis-h"></i></div>
					    
					    <div class="row text-center">
					    
						      <div class="col-md-4 box">
						        <span class="copyright quick-links">Copyright &copy; Your Website <script>document.write(new Date().getFullYear())</script>
						        </span>
						      </div>
						      
						      <div class="col-md-4 box">
							        <ul class="list-inline social-buttons">
								          <li class="list-inline-item">
								            <a href="#">
								            <i class="fab fa-twitter"></i>
								          </a>
								          </li>
								          <li class="list-inline-item">
								            <a href="#">
								            <i class="fab fa-facebook-f"></i>
								          </a>
								          </li>
								          <li class="list-inline-item">
								            <a href="#">
								            <i class="fab fa-linkedin-in"></i>
								          </a>
								          </li>
							        </ul>
						      </div>
						      
						      <div class="col-md-4 box">
							        <ul class="list-inline quick-links">
								          <li class="list-inline-item">
								            <a href="#">Privacy Policy</a>
								          </li>
								          <li class="list-inline-item">
								            <a href="#">Terms of Use</a>
								          </li>
							        </ul>
						      </div>
					    </div>
				    
				    
				 </footer>  
			</div>
		</div>

   
  </body>
  
</html>
