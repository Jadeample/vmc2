<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>租车平台</title>


  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body class="sub_page">

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.jsp">
            <span>
               租车平台
            </span>
          </a>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item ">
                  <a class="nav-link" href="index.jsp">主页 <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.jsp"> 简介</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="driver.jsp"> 司机 </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="cars.jsp"> 车辆</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="dclease.jsp"> 订单</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="login.jsp">登录/注册</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- service section -->

 <section class="client_section layout_padding-bottom">
   <div class="container">
     <div class="heading_container">
       <h2>
         司机 <br>
         个人技能 <br>
         展示
       </h2>
     </div>
     <div class="client_container">
       <div class="carousel-wrap ">
         <div class="owl-carousel">
           <div class="item">
             <div class="box">
               <div class="img-box">
                 <img src="images/client-1.png" alt="">
               </div>
               <div class="detail-box">
                 <h3>
                   李雷
                 </h3>
                 <p>十年老司机</p>
 				  <p>驾照等级：B2</p>
 				  <p>雇佣价格：300</p>
 				  <p>状态：空闲中</p>
                 <img src="images/quote.png" alt="">
               </div>
             </div>
           </div>
           <div class="item">
             <div class="box">
               <div class="img-box">
                 <img src="images/client-2.png" alt="">
               </div>
               <div class="detail-box">
                 <h3>
                   韩梅梅
                 </h3>
                 <p>新手女司机</p>
                 <p>驾照等级：C2</p>
                 <p>雇佣价格：50</p>
                 <p>状态：空闲中</p>
                 <img src="images/quote.png" alt="">
               </div>
             </div>
           </div>
		   <div class="item">
		     <div class="box">
		       <div class="img-box">
		         <img src="images/海绵宝宝.jpg" alt="">
		       </div>
		       <div class="detail-box">
		         <h3>
		           海绵宝宝
		         </h3>
		         <p>马路杀手</p>
		         <p>驾照等级：无照</p>
		         <p>雇佣价格：-200</p>
		         <p>状态：空闲中</p>
		         <img src="images/quote.png" alt="">
		       </div>
		     </div>
		   </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 
  <!-- end service section -->

  <!-- footer section -->
  <section class="container-fluid footer_section">
    <div class="container">
     <p>www.zuchepingtai.com</p>
    </div>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/owl.carousel.min.js">
  </script>


  <!-- owl carousel script -->
  <script type="text/javascript">
    $(".owl-carousel").owlCarousel({
      loop: true,
      margin: 20,
      navText: [],
      autoplay: true,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 2
        },
        1000: {
          items: 2
        }
      }
    });
  </script>
  <!-- end owl carousel script -->

</body>

</html>