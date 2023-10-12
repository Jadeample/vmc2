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

<body>

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
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.jsp">主页 <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.jsp"> 简介</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="service.html"> 司机 </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="cars.jsp"> 车辆 </a>
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
    <!-- slider section -->
    <section class=" slider_section ">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-7 ">
            <div class="box">
              <div class="detail-box">
                <h4>
                  欢迎进入
                </h4>
                <h1>
                  租车平台
                </h1>
              </div>
              <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item active">

                    <div class="img-box">
                      <img src="images/slider-img.png" alt="">
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="img-box">
                      <img src="images/carl1.png" alt="">
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="img-box">
                      <img src="images/carl1.png" alt="">
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="img-box">
                      <img src="images/carl2.png" alt="">
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="img-box">
                      <img src="images/carl3.png" alt="">
                    </div>
                  </div>
                </div>
              </div>

              <div class="btn-box">
                <a href="" class="btn-1">
                  更多选择
                </a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-5 ">
            <div class="slider_form">
              <h4>
                条件筛选
              </h4>
              <form action="">
                <input type="text" placeholder="车辆类型">
                <input type="text" placeholder="心仪价格">
                <input type="text" placeholder="租用天数">
                <div class="btm_input">
                  <input type="text" placeholder="电话号码">
                  <button>快速筛选</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4 col-md-5 offset-lg-2 offset-md-1">
          <div class="detail-box">
            <h2>
              汽车租赁 <br>
              服务公司简介
            </h2>
            <p>
            汽车租赁服务公司将给每个户一个用户帐号及相应的密码，该课户帐号和密码由用户自行保管。
			用户首次租赁车辆用车完毕后，如未产生任何纠纷，汽车租赁服务公司将通过邮递或其他方式向用户寄送会员卡。
			为提供更好的服务,本公司有权使用通过合法途径获得的用户其他身份信息(如身份证照片等)用于为用户提供服务,
			该信息是依据用户提供的身份信息而合法获取的，且仅限用于为客户提供服务。
            </p>
          </div>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/about-img.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->


  <!-- cars section -->

  <section class="news_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          商品 <br>
          展示
        </h2>
      </div>
      <div class="news_container">
        <div class="box">
          <div class="date-box">
            <h6>
              跑车
            </h6>
          </div>
          <div class="img-box">
            <img src="images/car1.jpg" alt="">
          </div>
          <div class="detail-box">
            <h6>
               兰博基尼
            </h6>
  			<p>状态：空闲中</p>
  			<p>车牌号：陕A8888</p>
  			<p>价格：1000</p>
          </div>
        </div>
        <div class="box">
          <div class="date-box">
            <h6>
              超跑
            </h6>
          </div>
          <div class="img-box">
            <img src="images/car2.jpg" alt="">
          </div>
          <div class="detail-box">
            <h6>
              玛莎拉蒂
            </h6>
            
             <p>状态：出车中</p>
             <p>车牌号：陕A34953</p>
             <p>价格：1500</p>
        
          </div>
        </div>
        <div class="box">
          <div class="date-box">
            <h6>
              豪华轿车
            </h6>
          </div>
          <div class="img-box">
            <img src="images/car3.jpg" alt="">
          </div>
          <div class="detail-box">
            <h6>
              奔驰至臻款
            </h6>
            <p>
            <p>状态：空闲中</p>
            <p>车牌号：陕A99999</p>
            <p>价格：3000</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end cars section -->

  <!-- client section -->

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
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end client section -->

  <!-- contact section -->

  <section class="contact_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container">
        <h2>
          举报 <br>
          投诉
        </h2>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-5  offset-md-1">
          <div class="contact_form">
            <h4>
              联系我们
            </h4>
            <form action="">
              <input type="text" placeholder="司机姓名">
              <input type="text" placeholder="您的联系方式">
              <input type="text" placeholder="投诉内容" class="message_input">
              <button>发送</button>
            </form>
          </div>
        </div>
        <div class="col-md-6 px-0">
          <div class="img-box">
            <img src="images/about-img.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end contact section -->

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

<style>
.copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>

</body>

</html>