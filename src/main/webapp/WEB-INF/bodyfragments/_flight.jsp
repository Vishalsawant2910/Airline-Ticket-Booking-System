<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
 
 <style>
 body {
	background: url('/Airlineticket/resources/images/pexel3.jpg') top right
		no-repeat;
	background-attachment: fixed;
	background-size: cover;
	height: 100%;
}
 </style>
 
 
           <div id="feedback"> <div class="container" align="center">
<div class="col-md-5">
    <div class="form-area">  
       <sf:form method="post" action="${pageContext.request.contextPath}/ctl/flight"  modelAttribute="form">
        <br style="clear:both">
                    <h3 style="margin-bottom: 15px"> <strong style="text-align:center">Add Flight</strong></h3>
                    <b><%@ include file="businessMessage.jsp"%></b>
                			
                			<sf:hidden  path="id"/>
                	
							<div class="form-group">
								<s:bind path="flightNo">
								<label style="text-align:center"><strong>Flight No</strong></label> 
								<sf:input path="${status.expression}" style="text-align:center" placeholder="Enter Flight No" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							<div class="form-group">
								<s:bind path="name">
								<label style="text-align:center" > <strong>Flight Name</strong></label> 
								<sf:input path="${status.expression}" style="text-align:center" placeholder="Enter Flight Name" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							
							<div class="form-group">
								<s:bind path="PNR">
								<label style="text-align:center"><strong>PNR Number</strong></label> 
								<sf:input path="${status.expression}" style="text-align:center" placeholder="Enter PNR Number" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							
        					 <input type="submit" name="operation"
								class="btn btn-primary pull-right" value="Save">
								<input type="submit" name="operation"
								class="btn btn-primary pull-right" value="Reset">
        </sf:form>
    </div>
</div>
</div> </div> <!--feedback-->
<br>

	