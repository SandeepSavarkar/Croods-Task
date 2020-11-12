<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
<link href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

 <link href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.8.1/sweetalert2.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/10.8.1/sweetalert2.js"></script>



</head>
<body>
	<h3 align="center">Student CRUD Operation</h3>
	<button type="button" style="position: relative;left:130px" class="btn btn-info btn-lg" style="size:25px" data-toggle="modal" data-target="#myModal">Add Student data</button>
	<div class="container">
  
  <!-- Trigger the modal with a button -->
  

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
          <form  method="post" action="/addStud">
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Student Name</label>
			    <input type="text" class="form-control" name="name" id="exampleFormControlInput1" placeholder="Enter name">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Mobile</label>
			    <input type="text" class="form-control" name="mobile" id="exampleFormControlInput1" placeholder="Enter only 10 digits">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlTextarea1">Date of Birth</label>
			    <input type="date" class="form-control" name="dob" id="exampleFormControlInput1" placeholder="Date of birth">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlSelect2">Hobbies</label>
			    <select class="form-control" name="hobbies" id="Select any hobby">
			      <option>Coding</option>
			      <option>Reading</option>
			      <option>Chess</option>
			      <option>Problem Solving</option>
			    </select>
			  </div>
			  <div class="form-group">
			    <input type="submit" name="add" value="Save">
			  </div>
			</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
	
	
	<div align="center">
	<table id="example" class="table table-striped table-bordered"  style="width:80%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Action</th>
  
            </tr>
        </thead>
		<tbody>
		<c:forEach var="listValue" items="${students}">
            <tr>
                <td>${listValue.name}</td>
                <td>${listValue.mobile}</td>
                <td>${listValue.dob}</td>
                <td>${listValue.hobbies}</td>
                <td><button  onclick="confirmDel(this.value)" class="btn btn-danger"  value="/delete/${listValue.name}">Delete</button>
                	<a href="/updateStud/${listValue.name}" class="btn btn-success">Update</a>
                </td>
            </tr>
         </c:forEach>
        </tbody>
         
      </table>
    
    	</div>

 	<script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>	
 	<script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
 	<script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>	     
 	
 	<script type="text/javascript">
	       $(document).ready(function() {
	    	    $('#example').DataTable();
	    	} );
    		
	       function confirmDel(value)
	       {
	    	   var x = confirm("Are you sure you want to delete?" + value);
	    	  
	    	   if (x)
	    	       window.location.href=value;
	    	   else
	    	     return false;
	    	   
	       }
	       
	       
    </script>  
</body>
</html>