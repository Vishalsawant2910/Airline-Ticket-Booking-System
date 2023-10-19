<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile Page</title>
<style>

/*  html {
            height: 100%;
        } */
body {
	margin: 0;
	padding: 0;
	font-family: 'Arial', sans-serif;
	background: linear-gradient(#141e30, #243b55);
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	padding: 40px;
	transform: translate(-50%, -50%);
	background: rgba(0, 0, 0, .5);
	box-sizing: border-box;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .6);
	border-radius: 10px;
}

        .container form p {
            position: relative;
            display: inline-block;
            padding: 10px 20px;
            color: #03E9F4;
            font-size: 16px;
            text-decoration: none;
            text-transform: uppercase;
            overflow: hidden;
            transition: .5s;
            margin-top: 40px;
            letter-spacing: 4px;
        }
        
        
        
.container {
  position: absolute;
	width: 400px;
	padding: 20px;
	 background: rgba(0, 0, 0, .5); 
	box-sizing: border-box;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .6);
	border-radius: 10px;
	margin-top: 250px; /* Adjust the margin-top value as needed */
	
}

.container h3 {
	margin: 0 0 20px;
	padding: 0;
	color: #F1EEE6;
	text-align: center;
}

.container .form-row .form-group   {
	position: relative;
}

        .container .user-box {
            position: relative;
        }


.container .form-row .form-group input, .container .form-row .form-group label {
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





.container .form-row .form-group input, .container .form-row .form-group select {
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


.container .form-group input, .container .form-group select {
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

     .container  .form-group label {
            
            top: 0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #F1EEE6;
            pointer-events: none;
            transition: .5s;
        } 
        
        
        
        

        .container form p:hover {
            background: #03E9F4;
            color: #F1EEE6;
            border-radius: 5px;
            box-shadow: 0 0 5px #03E9F4, 0 0 25px #03E9F4, 0 0 50px #03E9F4, 0 0 100px #03E9F4;
        }

        .container p span {
            position: absolute;
            display: block;
        }



.container p span:nth-child(1) {
	top: 0;
	left: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(90deg, transparent, #03e9f4);
	animation: btn-anim1 1s linear infinite;
}

.container  span:nth-child(2) {
	top: -100%;
	right: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(180deg, transparent, #03E9F4);
	animation: btn-anim2 1s linear infinite;
	animation-delay: .25s;
}

.container  span:nth-child(3) {
	bottom: 0;
	right: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(270deg, transparent, #03E9F4);
	animation: btn-anim3 1s linear infinite;
	animation-delay: .5s;
}

.container  span:nth-child(4) {
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
100%;
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
100%;
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
100%;
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
100%;
}
}
</style>


</head>
<body>

	<div class="container" style="text-align: center">
		<!-- <div class="col-md-5"  >
				<div class="form-area"  > -->
		<sf:form method="post" style="text-align: center" align="center"
			action="${pageContext.request.contextPath}/profile"
			modelAttribute="form">
			<br style="clear: both">
			<h3 style="margin-bottom: 15px; text-align: left:;">MY PROFILE</h3>
			<b><%@ include file="businessMessage.jsp"%></b>
			<div class="form-row" style="text-align: center" align="center">
				<div class="form-group col-md-6">
					<s:bind path="firstName">
						<label style="color: #03e9f4 ;">FIRST NAME</label>
						<sf:input path="${status.expression}" style="text-align: center" align="center"
							placeholder="Enter First Name" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				<div class="form-group col-md-6">
					<s:bind path="lastName">
						<label style="color: #03e9f4 ;">LAST NAME </label>
						<sf:input path="${status.expression}" style="text-align: center" align="center"
							placeholder="Enter Last Name" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
			</div>
			<div class="form-group">
				<s:bind path="login">
					<label style="color: #03e9f4 ;">USERNAME </label>
					<sf:input path="${status.expression}" style="text-align: center" align="center"
						class="form-control" />
					<font color="red" style="font-size: 13px"><sf:errors
							path="${status.expression}" /></font>
				</s:bind>
			</div>

			<div class="form-group">
				<s:bind path="email">
					<label style="color: #03e9f4 ;">EMAIL</label>
					<sf:input path="${status.expression}" style="text-align: center" align="center"
						class="form-control" />
					<font color="red" style="font-size: 13px"><sf:errors
							path="${status.expression}" /></font>
				</s:bind>
			</div>

			<div class="form-group">
				<s:bind path="mobileNo">
					<label style="color: #03e9f4 ;">MOBILE NO</label>
					<sf:input path="${status.expression}" style="text-align: center" align="center"
						class="form-control" />
					<font color="red" style="font-size: 13px"><sf:errors
							path="${status.expression}" /></font>
				</s:bind>
			</div>

			<div class="form-group">
				<s:bind path="dob">
					<label style="color: #03e9f4 ;">DATE OF BIRTH</label>
					<sf:input path="${status.expression}" id="datepicker"
						readonly="readonly" style="text-align: center" align="center"
						class="form-control" />
					<font color="red" style="font-size: 13px"><sf:errors
							path="${status.expression}" /></font>
				</s:bind>
			</div>

			<div class="form-group">
				<s:bind path="gender">
					<label style="color: #03e9f4 ;">GENDER</label>
					<sf:select class="form-control" path="${status.expression}" style="text-align: center" align="center"> 
						<sf:option value="" label="Select" />
						<sf:options items="${gender}" />
					</sf:select>
					<font color="red" style="font-size: 13px"><sf:errors
							path="${status.expression}" /></font>
				</s:bind>
			</div>

			<p align="center">
				<span></span>
				 <span></span>
				  <span></span> 
				  <span></span> 
				  <input
					type="submit" name="operation" class="btn btn-outline-info"
					value="Save"> 
					<input type="submit" name="operation"
					class="btn btn-outline-info" value="Reset">
			</p>


		</sf:form>
	</div>
	<!-- 		 
		</div>
	</div>
 -->

</body>

</html>
