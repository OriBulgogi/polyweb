<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>EVpoly Home</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/image/logo.png" rel="icon"/>

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

 
</head>

<body>
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index" class=" logo d-flex align-items-center">
        <img src="${pageContext.request.contextPath}/image/EVPOLY_bl.png" alt=""  >
      </a>
      <i class="bi bi-list toggle-sidebar-btn" style = "color:#3A4CA8"></i>
    </div><!-- End Logo -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
        <li class="nav-item dropdown pe-3">
          <a class="nav-link nav-icon d-flex align-items-center pe-0" href="login" >
            <i class="bi bi-box-arrow-right" alt="btn" style=" color: #3A4CA8;"></i>
          </a>

        </li>

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

   <!-- ======= Sidebar ======= -->
   <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="index">
          <i class="bi bi-house"></i>
          <span>HOME</span>
        </a>
      </li><!-- End HOME Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#manage-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>주차관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="manage-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="manage-area">
              <i class="bi bi-circle"></i><span>전체구역</span>
            </a>
          </li>
        </ul>
      </li><!-- End 주차관리 Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#history-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>주차내역</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="history-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="history-date">
              <i class="bi bi-circle"></i><span>날짜별 관리</span>
            </a>
          </li>
          <li>
            <a href="history-carnum">
              <i class="bi bi-circle"></i><span>차량번호별 관리</span>
            </a>
          </li>
        </ul>
      </li><!-- End 주차내역 Nav -->



      <li class="nav-item">
        <a class="nav-link collapsed" href="notice">
          <i class="bi bi-question-circle"></i>
          <span>공지사항</span>
        </a>
      </li><!-- End 공지사항 Page Nav -->


      <li class="nav-item">
        <a class="nav-link collapsed" href="staff">
          <i class="bi bi-person"></i>
          <span>직원정보</span>
        </a>
      </li><!-- End 직원정보 page Nav -->
      
    </aside><!-- End Sidebar-->



  <main id="main" class="main">

    <div class="pagetitle">
      <h1>HOME</h1>
      <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index">Home</a></li>
         </ol>
      </nav>
    </div><!-- End Page Title -->


    <section class="section home">
      <div class="row">
  
      <!-- Left side columns -->
      <div class="col-lg-8">
        <div class="row">

          <!-- TODAY Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card today-card">

              <div class="card-body">
                <h5 class="card-title">TODAY <span>| 주차 수</span></h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-calendar3-event"></i>
                  </div>
                  <div class="ps-3">
                     <h6>20</h6>
                    <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>
                  </div>
                  </div>
              </div>

            </div>
          </div><!-- End Today Card -->

          <!-- WEEKLY Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card weekly-card">
              <div class="card-body">
                <h5 class="card-title">WEEKLY <span>| 주차 수</span></h5>

                <div class="d-flex align-items-center">
                   <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-calendar3-week"></i>
                  </div>
                  <div class="ps-3">
                     <h6>60</h6>
                     <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                   </div>
                </div>
              </div>

             </div>
          </div><!-- End WEEKLY Card -->

          <!-- MONTHLY Card -->
          <div class="col-xxl-4 col-xl-12">

            <div class="card info-card monthly-card">

               <div class="card-body">
                 <h5 class="card-title">MONTHLY <span>| 주차 수</span></h5>

                 <div class="d-flex align-items-center">
                   <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-calendar3"></i>
                   </div>
                  <div class="ps-3">
                    <h6>150</h6>
                    <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>
                  </div>
                 </div>

                </div>
            </div>
           </div><!-- End MONTHLY Card -->

          <!-- Reports -->
          <div class="col-12">
            <div class="card">

              <div class="card-body">
                <h5 class="card-title-ko">전체 차량 분포도 </h5>

                <!-- Line Chart -->
                <div id="reportsChart"></div>

                <script>
                  document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: '총 유입 차량',
                          data: [20, 60, 150]
                        }, {
                          name: '위반 차량',
                          data: [5, 13, 65]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 5
                        },
                        colors: ['#4154f1', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 3
                        },
                        xaxis: {
                          type: 'category',
                          categories: ['TODAY', 'WEEKLY', 'MONTHLY'],
                          tickPlacement: 'between'
                        },
                        tooltip: {
                          x: {
              
                          },
                        }
                      }).render();
                    });
                </script>
                <!-- End Line Chart -->

              </div>

            </div>
          </div><!-- End Reports -->
        </div>
      </div><!-- End Left side columns -->


          <!-- Right side columns -->
          <div class="col-lg-4">
            
            <!-- News & Updates Traffic -->
            <div class="card">
              <div class="card-body">
                <h5 class="card-title-ko">NOTICE <span> |  최신순</span></h5>

                <div class="news">
                  <div class="post-item clearfix">
                    <!--<img src="assets/img/news-1.jpg" alt="">-->
                    <h4><a href="#">2022년 06년 08일 공지(계도기간 관련)</a></h4>
                    <p>Manager : 휴스타</p>
                  </div>

                  <div class="post-item clearfix">
                    <h4><a href="#">2022년 05년 26일 공지</a></h4>
                    <p>Manager : 휴스타</p>
                  </div>

                  <div class="post-item clearfix">
                    <h4><a href="#">2022년 05년 10일 공지</a></h4>
                    <p>Manager : 휴스타</p>
                  </div>

                  <div class="post-item clearfix">
                    <h4><a href="#">2022년 04년 29일 공지</a></h4>
                    <p>Manager : 휴스타</p>
                  </div>

                  <div class="post-item clearfix">
                    <h4><a href="#">2022년 04년 06일 공지</a></h4>
                    <p>Manager : 휴스타</p>
                  </div>

                </div><!-- End sidebar recent posts-->

              </div>
            </div><!-- End News & Updates -->

        </div><!-- End Right side columns -->
        </div>
      </section>
  
    </main><!-- End #main -->





      <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="credits">
      Project EVpoly. HUSTAR ICT</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/quill/quill.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/tinymce/tinymce.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>

</html>