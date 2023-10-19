<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Page</title>
<style>


 html {
            height: 100%;
        }
body {
	margin: 0;
	padding: 0;
	font-family: 'Arial', sans-serif;
	background: linear-gradient(#141e30, #243b55);
}

.container {
	padding: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: flex-start;
	min-height: 100vh;
	text-align: center;
}

.login-box {
  position: absolute;
	width: 400px;
	padding: 40px;
	 background: rgba(0, 0, 0, .5); 
	box-sizing: border-box;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .6);
	border-radius: 10px;
	margin-top: -10px; /* Adjust the margin-top value as needed */
}

.login-box h3 {
	margin: 0 0 20px;
	padding: 0;
	color: #F1EEE6;
	text-align: center;
}

.login-box .form-row .form-group   {
	position: relative;
}

        .login-box .user-box {
            position: relative;
        }


.login-box .form-row .form-group input, .login-box .form-row .form-group label {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #F1EEE6;
	margin-bottom: 30px;
	border: none;
	/* border-bottom: 1px solid #F1EEE6; */
	outline: none;
	background: transparent;
}





.login-box .form-row .form-group input, .login-box .form-row .form-group select {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	/* color: #F1EEE6; */
	margin-bottom: 10px;
	border: none;
	border-bottom: 1px solid #F1EEE6;
	outline: none;
/* 	background: transparent; */
}


.login-box .user-box input, .login-box .user-box select {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #F1EEE6;
	margin-bottom: 10px;
	border: none;
	border-bottom: 1px solid #F1EEE6;
	outline: none;
	background: transparent;
}

/*     .login-box .user-box label {
            
            top: 0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #F1EEE6;
            pointer-events: none;
            transition: .5s;
        } 
 
.login-box .user-box input:focus ~label, .login-box .user-box input:valid
	 ~label{
	top: -50px;
	left: 120px;
	color: #03E9F4;
	font-size: 12px;
}

.login-box form p {
	position: relative;
	display: inline-block;
	padding: 10px 20px;
	color: #03E9F4;
	font-size: 16px;
	text-decoration: none;
	text-transform: uppercase;
	overflow: hidden;
	transition: .5s;
	margin-top: 10px;
	letter-spacing: 4px;
}

.login-box form p:hover {
	background: #03E9F4;
	color: #F1EEE6;
	border-radius: 5px;
	box-shadow: 0 0 5px #03E9F4, 0 0 25px #03E9F4, 0 0 50px #03E9F4, 0 0
		100px #03E9F4;
}

.login-box p span {
	position: absolute;
	display: block;
}

.login-box p span:nth-child(1) {
	top: 0;
	left: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(90deg, transparent, #03e9f4);
	animation: btn-anim1 1s linear infinite;
}

.login-box  span:nth-child(2) {
	top: -100%;
	right: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(180deg, transparent, #03E9F4);
	animation: btn-anim2 1s linear infinite;
	animation-delay: .25s;
}

.login-box  span:nth-child(3) {
	bottom: 0;
	right: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(270deg, transparent, #03E9F4);
	animation: btn-anim3 1s linear infinite;
	animation-delay: .5s;
}

.login-box pspan:nth-child(4) {
	bottom: -100%;
	left: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(360deg, transparent, #30E9F4);
	animation: btn-anim4 1s linear infinite;
	animation-delay: .75s;
}

@
keyframes btn-anim1 { 0% {
	left: -100%;
}

50


%
,
100


%
{
left


:


100
%;


}
}
@
keyframes btn-anim2 { 0% {
	top: -100%;
}

50


%
,
100


%
{
top


:


100
%;


}
}
@
keyframes btn-anim3 { 0% {
	right: -100%;
}

50


%
,
100


%
{
right


:


100
%;


}
}
@
keyframes btn-anim4 { 0% {
	bottom: -100%;
}
50


%
,
100


%
{
bottom


:


100
%;


}
}
</style>

</head>

<body>
	<div class="container"   style="text-align: center" align="center">
		<div class="col-md-5">
			<div class="login-box" style="text-align: center">
				<h3>REGISTRATION</h3>
				<sf:form method="post" 
					action="${pageContext.request.contextPath}/signUp"
					modelAttribute="form">
					<!-- <br style="clear: both"> -->

					<b><%@ include file="businessMessage.jsp"%></b>


					<div class="form-row">
						<div class="form-group col-md-6">
							<!-- <div class="user-box"> -->
								<s:bind path="firstName">
									<label style="text-align: center;color: #03e9f4 ;">First Name</label>
									<sf:input path="${status.expression}" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							<!-- </div> -->
						</div>
						<div class="form-group col-md-6">
							<s:bind path="lastName">
								<label style="color: #03e9f4">Last Name</label>
								<sf:input path="${status.expression}" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>
					</div>
					<div class="user-box">
						<s:bind path="login">
							<label style="color: #03e9f4">UserName</label>
							<sf:input path="${status.expression}" style="text-align:center"
								required="" class="form-control" />
							<font color="red" style="font-size: 13px"><sf:errors
									path="${status.expression}" /></font>
						</s:bind>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<s:bind path="password">
								<label style="color: #03e9f4" for="pwd">Password</label>
								<sf:input type="password" path="${status.expression}"
									class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="form-group col-md-6">
							<s:bind path="confirmPassword">
								<label style="color: #03e9f4" for="pwd">Confirm Password</label>
								<sf:input type="password" path="${status.expression}"
									class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-4">
							<s:bind path="country">
								<label style="color: #03e9f4">Country</label>
								<sf:input path="${status.expression}" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="form-group col-md-4">
							<s:bind path="state">
								<label style="color: #03e9f4">State</label>
								<sf:input path="${status.expression}" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>
						<div class="form-group col-md-4">
							<s:bind path="city">
								<label style="color: #03e9f4">City</label>
								<sf:input path="${status.expression}" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<s:bind path="email">
								<label style="color: #03e9f4">Email</label>
								<sf:input path="${status.expression}" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="form-group col-md-6">
							<s:bind path="mobileNo">
								<label style="color: #03e9f4">Mobile No</label>
								<sf:input path="${status.expression}" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>
					</div>

					<div class="user-box">
						<s:bind path="dob">
							<label style="color: #03e9f4">Date of Birth</label>
							<sf:input path="${status.expression}" style="text-align: center" readonly="readonly"
								id="datepicker" class="form-control" />
							<font color="red" style="font-size: 13px"><sf:errors
									path="${status.expression}" /></font>
						</s:bind>
					</div>

					<div class="user-box">
						<s:bind path="gender">
							<label style="color: #03e9f4">Gender</label>
							<sf:select class="form-control" path="${status.expression}">
								<sf:option value="" label="" />
								<sf:options items="${gender}" />
							</sf:select>
							<font color="red" style="font-size: 13px"><sf:errors
									path="${status.expression}" /></font>
						</s:bind>
					</div>

					<p align="center">
						<span></span> <span></span> <span></span> <span></span> <input
							type="submit" name="operation" class="btn btn-outline-info"
							value="Save"> <input type="submit" name="operation"
							class="btn btn-outline-info" value="Reset">
					</p>

					<!-- 	<input type="submit" name="operation"
						class="btn btn-outline-info" value="Save">
						<input
						type="submit" name="operation" class="btn btn-outline-info"
						value="Reset"> -->
				</sf:form>
			</div>
		</div>
	</div>

	<!--feedback-->


</body>

</html>