<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sign Up</title>
	
	<style>
	
		*{
			margin:0;
			padding:0;
			box-sizing: border-box;
		
		}
		
		.wrapper {
		  /* margin: 0; */
		  width: 100%;
		  /* max-width: 1140px; */
		  min-height: 120vh;
		  display: flex;
		  align-items: center;
		  justify-content: center;
		  flex-direction: column;
		  background-image: url('https://img.freepik.com/free-vector/blue-abstract-gradient-wave-vector-background_53876-111548.jpg?w=1380&t=st=1680114097~exp=1680114697~hmac=9322b506e3ad7e7b9772c7f969f1c1706bc3891c6f108356dfec0d8144d016b5');
		  background-repeat: no-repeat;
		  background-size: cover; 
		}
		 
		.container {
		  position: relative;
		  width: 100%;
		  max-width: 800px;
		  height: auto;
		  display: flex;
		  background: #ffffff;
		  box-shadow: 0 0 5px #999999;
		}
		
		
		
		.col-left,
		.col-right {
		  padding: 30px;
		  display: flex;
		}
		
		.col-left {
		  width: 60%;
		  -webkit-clip-path: polygon(0 0, 0% 100%, 100% 0);
		  clip-path: polygon(0 0, 0% 100%, 100% 0);
		  background: #237A57;
		}
		
		.col-right {
		  padding: 60px 30px;
		  width: 50%;
		  margin-left: -10%;
		}
		
		@media(max-width: 575.98px) {
		  .container {
		    flex-direction: column;
		    box-shadow: none;
		  }
		
		  .col-left,
		  .col-right {
		    width: 100%;
		    margin: 0;
		    -webkit-clip-path: none;
		    clip-path: none;
		  }
		
		  .col-right {
		    padding: 30px;
		  }
		}
		
		.login-text {
		  position: relative;
		  width: 100%;
		  color: #ffffff;
		}
		
		.login-text h2 {
		  margin: 0 0 15px 0;
		  font-size: 30px;
		  font-weight: 700;
		}
		
		.login-text p {
		  margin: 0 0 20px 0;
		  font-size: 16px;
		  font-weight: 500;
		  line-height: 22px;
		}
		
		.login-text .btn {
		  display: inline-block;
		  padding: 7px 20px;
		  font-size: 16px;
		  letter-spacing: 1px;
		  text-decoration: none;
		  border-radius: 30px;
		  color: #ffffff;
		  outline: none;
		  border: 1px solid #ffffff;
		  box-shadow: inset 0 0 0 0 #ffffff;
		  transition: .8s;
		  -webkit-transition: .8s;
		}
		
		.login-text .btn:hover {
		  color: #237A57;
		  box-shadow: inset 150px 0 0 0 #ffffff;
		}
		
		.login-form {
		  position: relative;
		  width: 100%;
		}
		
		.login-form h2 {
		  margin: 0 0 15px 0;
		  font-size: 22px;
		  font-weight: 700;
		}
		
		.login-form p {
		  margin: 0 0 10px 0;
		  text-align: left;
		  color: #666666;
		  font-size: 15px;
		}
		
		.login-form p:last-child {
		  margin: 0;
		  padding-top: 3px;
		}
		
		.login-form p a {
		  color: #237A57;
		  font-size: 14px;
		  text-decoration: none;
		}
		
		.login-form label {
		  display: block;
		  width: 100%;
		  margin-bottom: 2px;
		  letter-spacing: .5px;
		}
		
		.login-form p:last-child label {
		  width: 60%;
		  float: left;
		}
		
		.login-form label span {
		  color: #ff574e;
		  padding-left: 2px;
		}
		
		.login-form input {
		  display: block;
		  width: 100%;
		  height: 35px;
		  padding: 0 10px;
		  outline: none;
		  border: 1px solid #cccccc;
		  border-radius: 30px;
		}
		
		.login-form input:focus {
		  border-color: #237A57;
		}
		
		.login-form select {
		  display: block;
		  width: 100%;
		  height: 35px;
		  padding: 0 10px;
		  outline: none;
		  border: 1px solid #cccccc;
		  border-radius: 30px;
		}
		
		.login-form select:focus {
		  border-color: #237A57;
		}
		
		.login-form button,
		.login-form input[type=submit] {
		  display: inline-block;
		  width: 100%;
		  margin-top: 5px;
		  color: #237A57;
		  font-size: 16px;
		  letter-spacing: 1px;
		  cursor: pointer;
		  background: transparent;
		  border: 1px solid #237A57;
		  border-radius: 30px;
		  box-shadow: inset 0 0 0 0 #237A57;
		  transition: .8s;
		  -webkit-transition: .8s;
		}
		
		.login-form button:hover,
		.login-form input[type=submit]:hover {
		  color: #ffffff;
		  box-shadow: inset 350px 0 0 0 #237A57;
		}
	
	
	
	
	</style>
</head>
<body>

	 <div class="wrapper">
		  <div class="container">
			    <div class="col-left">
				      <div class="login-text">
					        <h2>Welcome Back</h2>
					        <p>Already have account.<br>Go to Sign In page.</p>
					        <a class="btn" href="Login.jsp">Sign In</a>
				      </div>
			    </div>
			    
			    <div class="col-right">
				      <div class="login-form">
					        <h2>Registration</h2>
					        
					        <form action="/Classmate-Web/registration" method="post">
						          <p>
						            <label>Name<span>*</span></label>
						            <input type="text" placeholder="Name" id="name" name="name" required>
						          </p>
						          <p>
						            <label>Username<span>*</span></label>
						            <input type="text" placeholder="username" id="username" name="username" required>
						          </p>
						          <p>
						            <label>Password<span>*</span></label>
						            <input type="password" placeholder="Password" id="password" name="password" required>
						          </p>
						          <p>
						          	<label>Department<span>*</span></label>
						          	<select id="department" name="department">
										<option value="" selected disabled>Select Department</option>
										<option value="CSE">CSE</option>
										<option value="SWE">SWE</option>
										<option value="EEE">EEE</option>
										<option value="PHY">PHY</option>
									</select>
						          </p>
						          <p>
						          	<label>Role<span>*</span></label>
						          	<select id="role" name="role">
										<option value="" selected disabled>Select Role</option>
										<option value="Teacher">Teacher</option>
										<option value="Student">Student</option>
									</select>
						          </p>
						          <p>
						            <input type="submit" value="Register" />
						          </p>
					          
					        </form>
				      </div>
			    </div>
			    
		  </div>
	  
	</div>

</body>
</html>