<%-- 
    Document   : indianAFform
    Created on : 7 Oct, 2020, 7:18:31 PM
    Author     : Shivam paswan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
       <link href="css/font-awesome.min.css" rel="stylesheet"/>
       <script src="js/jquery-3.3.1.min.js"></script>
       <script src="js/bootstrap.min.js"></script>
       <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
      <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css"> 
    </head>
    <body>
         <img src="../images/background2.jpg" alt="..." style="height: auto; width:100%;">
     
      <div class="carousel-caption">   
          <h1 style="font-size:50px;font-style:italic;">Indian Navy</h1> 
    <div class="modal-dialog" id="ddl" onchange="get-val(); ">
         <div class="modal-content">
             <div class="modal-header">
                
      <form action="../IndianNavydb" method="post" enctype="multipart/form-data" style="background-color: yellowgreen;">
 <span class="input-group-addon" id="sizing-addon1">
<h4> Profile: </h4>
<br>
<input type="file" name="profile"  class="form-control" placeholder=" Upload Profile" aria-describedby="sizing-addon1" /> 
</span>
<br>
 <span class="input-group-addon" id="sizing-addon2">
     <h4>Introduction:</h4>
<br>
<input type="text" name="info"   class="form-control" placeholder="Enter Information" aria-describedby="sizing-addon2"
       style="height:100px;"/> 
</span>
 <br>

 <span class="input-group-addon" id="sizing-addon3">
     <h4>
         <input type="submit" value="Complited" class="btn btn-success" aria-describedby="sizing-addon3"/></h4></span>
</form>
             
       </div>        
</div>
    </div>
        </div>
  
    
    <script src="js/jquery-3.3.1.min"></script>
    <script src="js/bootstrap.js"></script>
<script>
    function get-val()
    {
        var ddlval=$("#ddl").text();
        alert(ddlval);
    }
    
</script>
    </body>
</html>
