<!DOCTYPE html>
<html lang="ko">

<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>EVpoly Home</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/image/logo.png" rel="icon">

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



<!-- JAVASCRIPT FUNCTION -->
<script type="text/javascript"
    src="https://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript">

 $(document).ready(function(){
         $.ajax({
             async : true, // 기본값은 true
             type : "GET",
             url : "http://localhost:8080/manage-area.do",
             success : function(data) {


                var tempHtml = "";
				var imgIndex = 0;
                $(data).each(function(){
                	console.log(this.pkgAreaSeq + " " + this.pkgAreaName + " " + this.pkgTotalLin);

                    tempHtml +=
                    '<div class="col-xxl-6 col-md-6">' +
                        '<div class="card info-card floor1-card" style="overflow: hidden;' +
                       ' white-space: nowrap; overflow-x:auto;"  >' +
                          '<div class="card-body">'+
                          '<h5 class="area-title-ko">'+ this.pkgAreaName +'<span>지하 1 ~ 2층 </span></h5>'+
                            '<div class="parkingpic">'+
                              '<div class="d-flex align-items-center">'+
                                '<div class="col-4post-item clearfix" >'+
                                '<img src="${pageContext.request.contextPath}/image/parking'+(++imgIndex) +'.jpg" alt="">'+
                                '</div>'+
                                '<h4 class="col-2 clear fix">'+
                                  '<p>전체 주차 구역 : <span' + this.pkgTotalLin  + '>' + this.pkgTotalLin  + '</span>개</p>'+
                                  '<p>현재 주차 개수 : <span' + this.pkgLinUse + '}>' + this.pkgLinUse  + '</span>개</p>'+
                                  '<p>남은 주차 자리 : <span' + (this.pkgTotalLin - this.pkgLinUse) + '}>' + (this.pkgTotalLin - this.pkgLinUse) + '</span>개</p>'+
                                '</h4>'+
                              '</div>'+

                              '<div class = " clearfix">'+
                              '<button class="btn btn-outline-primary" style="float:right;" type="button" onClick="location.href='+""+ "'history-date'"+ '">구역자세히</button>'+
                              '</div>'+
                            '</div>'+
                          '</div>'+
                        '</div>'+
                     '</div>'
                });

                 $("#hereUhTae").append(tempHtml);
             },
             error : function(XMLHttpRequest, textStatus, errorThrown) {
                 alert("통신 실패.");
             }
         });
     });

</script>


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
        <a class="nav-link  collapsed" href="index">
          <i class="bi bi-house"></i>
          <span>HOME</span>
        </a>
      </li><!-- End HOME Nav -->

      <li class="nav-item">
        <a class="nav-link" data-bs-target="#manage-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>주차관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="manage-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="manage-area" class="active">
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
      <h1>전체 주차 구역</h1>
      <nav>
      <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="index">Home</a></li>
      <li class="breadcrumb-item">주차 관리</li>
      <li class="breadcrumb-item active">전체 구역</li>
      </ol>
      </nav>
      </div><!-- End Page Title -->


      <section class="section area">
        <div class="row">
          <div class="col-lg-12">

            <div class="card">
              <h5 class="card-title" style="margin-left: 30px;">건물 리스트</h5>
              <div class="card-body">
                <div class="carlist d-flex" sytle="padding;">
                  <div class="card scroll-card" style="overflow-x:hidden; overflow-y:auto; width:3200px; height:600px;"> 

                      <div class="box">
                        <div id="hereUhTae" class="row">

                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
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
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      




      <!-- 원하는 div 리로딩 소스코드
      <script>
        setInterval(function() {
          $("#box").load(location.href+" #box>*","");
        }, 5000);
      </script> -->

        

      <!-- Template Main JS File -->
      <script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>