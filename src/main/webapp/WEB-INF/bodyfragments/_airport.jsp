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
body {
	background: url('/Airlineticket/resources/images/pexel4.jpg') top right
		no-repeat;
	background-attachment: fixed;
	background-size: cover;
	height: 100%;
}
</style>


</head>
<body>






	<div id="feedback">
		<div class="container" align="center">
			<div class="col-md-5">
				<div class="form-area">
					<sf:form method="post"
						action="${pageContext.request.contextPath}/ctl/airport"
						modelAttribute="form">
						<br style="clear: both">
						<h3 style="margin-bottom: 15px; text-align: left:;"
							style="text-align:center">Add Airport</h3>
						<b><%@ include file="businessMessage.jsp"%></b>

						<sf:hidden path="id" />

						<%-- <div class="form-group">
								<s:bind path="id">
								<label >Id:</label> 
								<sf:input path="${status.expression}" placeholder="Enter Id" class="form-control" />
									
							</s:bind>
							</div> --%>

						<div class="form-group">
							<s:bind path="code">
								<label style="text-align: center">Airport Code</label>
								<sf:input path="${status.expression}"
									placeholder="Enter Airport Code" style="text-align:center"
									class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="form-group">
							<s:bind path="name">
								<label style="text-align: center">Name</label>
								<sf:input path="${status.expression}" placeholder="Enter Name"
									style="text-align:center" class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<s:bind path="country">
									<label style="text-align: center">Country</label>
									<sf:input path="${status.expression}"
										placeholder="Enter Country" style="text-align:center"
										class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>
							<div class="form-group col-md-4">
								<s:bind path="state">
									<label style="text-align: center">State</label>
									<sf:input path="${status.expression}" placeholder="Enter State"
										style="text-align:center" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>
							<div class="form-group col-md-4">
								<s:bind path="city">
									<label style="text-align: center">City</label>
									<sf:input path="${status.expression}" placeholder="Enter City"
										class="form-control" style="text-align:center" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
								</s:bind>
							</div>
						</div>


						<div class="form-group">
							<s:bind path="address">
								<label style="text-align: center">Address</label>
								<sf:textarea rows="1" cols="1" path="${status.expression}"
									placeholder="Enter Address" style="text-align:center"
									class="form-control" />
								<font color="red" style="font-size: 13px"><sf:errors
										path="${status.expression}" /></font>
							</s:bind>
						</div>


						<input type="submit" name="operation"
							class="btn btn-primary pull-right" value="Save">or<input
							type="submit" name="operation" class="btn btn-primary pull-right"
							value="Reset">
					</sf:form>
				</div>
			</div>
		</div>
	</div>
	<!--feedback-->


</body>

</html>
