<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="utf-8"/>

  
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- Site Metas -->
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
  
    <title>VTJDM04</title>
  
    <!-- slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css"/>
  
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css"/>
  
    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&amp;display=swap" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet"/>
    <!-- responsive style -->
    <link href="../css/responsive.css" rel="stylesheet"/>
    
  </head>
  
  <body>
    <div class="hero_area">
      <!-- header section strats -->
      <header class="header_section">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-8">
              <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="index.html">
                 
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
  
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <div class="d-flex  flex-column flex-lg-row align-items-center">
                    <ul class="navbar-nav  ">
                      <li class="nav-item active">
                        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="/profile/${um.userId}">Profile</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="/upload">Enter Test Results</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="/view1/${um.userId}">View Results</a>
                      </li>
                     <!--  <li class="nav-item">
                        <a class="nav-link" href="/userHarmFiles/${um.userId}">HARM Report</a>
                      </li> -->
                        <li class="nav-item">
                        <a class="nav-link" href="/logout">Logout</a>
                      </li>
                       
                      
                    </ul>
                    <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                      <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
                    </form>
                  </div>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </header>
      <!-- end header section -->
      <!-- slider section -->
      <section class=" slider_section ">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
       

          <c:choose>
  <c:when test="${profile != null}">
    <div class="container">
      <div class="row">
        ${msg}
        <div class="col-lg-5 col-md-6">
          <div class="slider_detail-box">
            <h1>
           welcome ${um.name}
            </h1>
          <table class="table" style="color:#fff;">
           <tr>
            <td>Name</td>
            <td>Email</td>
            <td>Mobile</td>
           </tr>
<tr>
  <td>${um.name}</td>
  <td>${um.emailId}</td>
  <td>${um.mobile}</td>
</tr>
          </table>
            <div class="btn-box">
             
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="slider_img-box">
            <img src="../images/slider-img.png" alt=""/>
          </div>
        </div>
      </div>
    </div>
  </c:when>

  <c:when test="${upload != null}">
    
  <div class="container">
    <h1>
      welcome ${um.name}
      <p>${msg}</p>
       </h1>
    <div class="row">
      
   <div class="col-md-8">
      <form action="insertRecords"  method="post">
        <div class="row mb-3">
          <label for="inputEmail3" class="col-sm-2 col-form-label">Number of Pregnancies:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputEmail3" name="pregnancies">
          </div>
        </div>
        <div class="row mb-3">
          <label for="inputPassword3" class="col-sm-2 col-form-label">Glucose Level:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputPassword3" name="glucose">
          </div>
        </div>
        <div class="row mb-3">
          <label for="inputEmail3" class="col-sm-2 col-form-label">Blood Pressure:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputEmail3" name="blood_pressure">
          </div>
        </div>
        <div class="row mb-3">
          <label for="inputEmail3" class="col-sm-2 col-form-label">Heart rate:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputEmail3" name="skin_thickness">
          </div>
        </div>
        <div class="row mb-3">
          <label for="inputEmail3" class="col-sm-2 col-form-label">Insulin Level:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputEmail3" name="insulin">
          </div>
        </div>
        <div class="row mb-3">
          <label for="inputEmail3" class="col-sm-2 col-form-label">BMI:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputEmail3" name="bmi">
          </div>
        </div>
        <div class="row mb-3">
          <label for="inputEmail3" class="col-sm-2 col-form-label">Diabetes Pedigree Function:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputEmail3" name="diabetes_pedigree">
          </div>
        </div>
        <div class="row mb-3">
          <label for="inputEmail3" class="col-sm-2 col-form-label">Age:</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="inputEmail3" name="age">
          </div>
        </div>
        
       
        <input type="hidden" name="userid" value="${um.userId}"/>
            <input type="submit" value="submit" class="btn btn-success"/>
      </form>
    </div></div>
      <!-- <div class="col-lg-5 col-md-12">
        <div class="slider_detail-box">
          <h1>
         welcome ${um.name}
         <p>${msg}</p>
          </h1>
          <form action="uploadSubmit" method="post" class="form-group" >
            <label></label>
            
            <div class="input-group">
            
              <label for="pregnancies" class="form-label">Number of Pregnancies:</label><br/>
              <input type="text" name="pregnancies" required class="form-control">
            </div>
       
            <div class="input-group">
        <label for="glucose">Glucose Level:</label>
        <input type="text" name="glucose" required class="input--style-5">
        </div>

        <div class="input-group">
        <label for="blood_pressure">Blood Pressure:</label>
        <input type="text" name="blood_pressure" required class="input--style-5">
        </div>

        <div class="input-group">
        <label for="skin_thickness">Skin Thickness:</label>
        <input type="text" name="skin_thickness" required class="input--style-5">
        </div>

        <div class="input-group">
        <label for="insulin">Insulin Level:</label>
        <input type="text" name="insulin" required class="input--style-5">
        </div>

        <div class="input-group">
        <label for="bmi">BMI:</label>
        <input type="text" name="bmi" required class="input--style-5">
        </div>

        <div class="input-group">
        <label for="diabetes_pedigree">Diabetes Pedigree Function:</label>
        <input type="text" name="diabetes_pedigree" required class="input--style-5">
        </div>

        <div class="input-group">
        <label for="age">Age:</label>
        <input type="text" name="age" required class="input--style-5">
        </div>
              
            <input type="hidden" name="userid" value="${um.userId}"/>
            <input type="submit" value="submit" class="btn btn-success"/>
          </form>
          <div class="btn-box">
           
          </div>
        </div>
      </div> -->
      <!-- <div class="col-md-6">
        <div class="slider_img-box">
          <img src="../images/slider-img.png" alt=""/>
        </div>
      </div> -->
    </div>
  </div>
  
  </c:when>

  <c:when test="${view != null}">
    
  <div class="container">
    <div class="row">
      <div class="col-lg-5 col-md-6">
        <div class="slider_detail-box">
          <h1>
         welcome ${um.name}
       
         <p>${msg}</p>
          </h1>
         <table class="table" style="color:#fff;">
         <tr>
          <td>user Id</td>
          <td>Result</td>
         </tr>

         <tr>

          <c:forEach items="${results}" var="element"> 
  <tr>
    <td>${element.userid}</td>
    <td>${element.result}</td>
    
  </tr>
</c:forEach>
         </tr>

         </table>




          <div class="btn-box">
           
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="slider_img-box">
          <img src="../images/slider-img.png" alt=""/>
        </div>
      </div>
    </div>
  </div>
  
  </c:when>

  
  <c:when test="${harmFiles != null}">
    
  <div class="container">
    <div class="row">
      <div class="col-lg-5 col-md-6">
        <div class="slider_detail-box">
          <h1>
        Harm Report Files
       
         <p>${msg}</p>
          </h1>
         <table class="table" style="color:#fff;">
         <tr>
          <td>FileName</td>
          <td>Action</td>
         </tr>

         <tr>

          <c:forEach items="${files}" var="element"> 
  <tr>
    <td>${element.fileName}</td>
    <td><a href="/deleteFile/${element.fileId}">Delete File</a></td>
    
  </tr>
</c:forEach>
         </tr>

         </table>




          <div class="btn-box">
           
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="slider_img-box">
          <img src="../images/slider-img.png" alt=""/>
        </div>
      </div>
    </div>
  </div>
  
  </c:when>

  <c:otherwise>
    <div class="container">
      <div class="row">
        <div class="col-lg-5 col-md-6">
          <div class="slider_detail-box"> 
            <h1>
           welcome ${um.name}
            </h1>
       
         
            <div class="btn-box">
             
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="slider_img-box">
            <img src="../images/slider-img.png" alt=""/>
          </div>
        </div>
      </div>
    </div>
  </c:otherwise>
</c:choose>
        
             
            
           
       
      </section>
      <!-- end slider section -->
    </div>
  
 
  
  
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
  
  
  
  </body></html>