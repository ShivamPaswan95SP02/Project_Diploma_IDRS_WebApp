<%-- 
    Document   : contact_us
    Created on : 23 Mar, 2020, 5:13:21 PM
    Author     : Shivam paswan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.ConnectionM"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
       <link href="css/bootstrap.min.css" rel="stylesheet"/>
       <link href="css/font-awesome.min.css" rel="stylesheet"/>
       <script src="js/jquery-3.3.1.min.js"></script>
       <script src="js/bootstrap.min.js"></script>
       
     </head>
    <body>
        
        <div class="container-fluid" style="background-color:buttonhighlight;">
            <!-- font -->
           
           
            <div class="row">
                 <nav class="navbar navbar-default navbar-fixed-top" >
           
               
               <div class="cl-sm-12" style="border-radius:0px; height: 95px;
     font-size: 30px; background-image:linear-gradient(orangered,white,green);">
                   <div class="col-sm-1">
                   <img src="../images/logo1.jpg" style="height: 95px; width:110px;"></img>
                   </div>
                   <div class="col-sm-11">
            <label class="text text-uppercase" style="font-weight:bolder; padding-top:1%; font-family:'times new roman'; font-family: cursive;
          font-size:35px; color: #000099;"><marquee> India Defence Research System </marquee> </label>
                </div>
               </div>
            
                     </nav>
           </div>
            
            
                   <!-- start-->
                    
                   <div class="row" > 
                     

                    <div class="col-sm-12" >
                  <a href="#">
                      <img src="../images/allpage.jpg" alt="Citizen Charter "  style="width: 100%;height: 350px;"></a>
                      <div class="carousel-caption">   
          <h1 style="font-size:50px;font-style:italic;"> Indian Navy </h1> 
                      </div>
                     </div>
                       
                       </div>
<!--end-->
            
<div class="row">
    <div class="col-sm-12">
        <ol class="breadcrumb" style="font-size: 20px;">
  <li><a href="#">Home</a></li>
  <li><a href="#"> Organization </a></li>
  <li class="active"> Indian Navy </li>
</ol>
</div>
    </div>


        <div class="row">
            <div class="container-fluid">
    <div class="col-sm-12" style=" height: auto; background-color:royalblue;">
       <br>
        <%
           ConnectionM cm=new ConnectionM();
           String command="select*from indiannavy ";
           ResultSet rs=cm.getData(command);
           while(rs.next())
           {
 %>

    <table>
<tr>
  <img src="images/<%=rs.getString(1)%>" style="height: auto; width: 400px; "/>
    </tr><br>
   <tr>
    <td style="font-size: 20px;">
                 <br>
                   <%=rs.getString(2)%>
    </td></tr>
            </table>
       
  <% }%>
        
        <br>
    </div>
            </div>
</div>  

   

      
<!--footer-->
    <div class="row">
<div class="col-sm-12 border-top border-3" style="heigth: 250px; background:blueviolet;">
<div class="card text-center">
  <div class="card-header">
   <h4> <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a style="color:lime;" href="#">Active</a>
      </li>
      <li class="nav-item">
        <a style="color:lime;" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a style="color:lime;" href="#">Disabled</a>
      </li>
    </ul></h4>
  </div>
       
  
  
</div>
<div class="footer-copyright">
<div class="container">
<div class="row">
<div class="col-sm-1">
    <a href="index.html" class="logo"> <img alt="Tutorials Point" class="img-responsive" src="../images/logo2.jpg"
                                            style="width:100px; height:60px;" > </a>
</div>
<div class="col-md-4 col-sm-12 col-xs-12">
   <nav>
      <ul>
         <li><a style="color:navy;">Privacy Policy</a></li>
         <li><a style="color:navy;">Cookies Policy</a></li>
         <li><a style="color:navy">Contact</a></li>
      </ul>
	  
	  <ul>
         <li><a style="color:navy;">Previous</a></li>
         <li><a style="color:navy;"> Policy</a></li>
         <li><a style="color:navy">Next</a></li>
      </ul>
   </nav>
</div>
    <div class="col-md-3 col-sm-12 col-xs-12" style="margin-top: 100px;">
<p>&copy; Copyright © 2020, DRDO, All rights reserved</p>
</div>
<div class="col-md-4 col-sm-12 col-xs-12">
   <div class="news-group">
      
      <span class="input-group-addon" id="sizing-addon2">
     <h4>Email Id</h4>
<br>
<input type="email" class="form-control" placeholder="enter email" aria-describedby="sizing-addon2"/> 
</span>
 <br>

 <span class="input-group-addon" id="sizing-addon3">
     <h4><input type="button" value=" Submit" class="btn btn-danger" aria-describedby="sizing-addon3"/></h4></span>
      
   </div>
   </div>
</div>
</div>
   
</div>
     <div class="row">
        <div class="col-sm-12" style="height:20px;">
    <div class="card text-center"></div>
    </div>
    </div>
</div>
        
</div>
    

<!--/footer-->
            
        </div>
    </body>
</html>


