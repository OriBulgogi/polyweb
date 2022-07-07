<!DOCTYPE html>
<html lang="ko">

<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <meta charset="utf-8">
  <meta content="width=device-width, shrink-to-fit=no, initial-scale=1.0" name="viewport">

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

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    


    <script>
      $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip();
      });
      </script>
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
        <a class="nav-link  collapsed" href="index">
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
        <ul id="history-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="history-date" >
              <i class="bi bi-circle"></i><span>날짜별 관리</span>
            </a>
          </li>
          <li>
            <a href="history-carnum" >
              <i class="bi bi-circle"></i><span>차량번호별 관리</span>
            </a>
          </li>
        </ul>
      </li><!-- End 주차내역 Nav -->



      <li class="nav-item ">
        <a class="nav-link collapsed" href="notice" >
          <i class="bi bi-question-circle"></i>
          <span>공지사항</span>
        </a>
      </li><!-- End 공지사항 Page Nav -->


      <li class="nav-item">
        <a class="nav-link " href="staff">
          <i class="bi bi-person"></i>
          <span>직원정보</span>
        </a>
      </li><!-- End 직원정보 page Nav -->
      
    </aside><!-- End Sidebar-->


    <main id="main" class="main">

        <div class="pagetitle">
          <h1>직원정보</h1>
          <nav>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item active">직원정보</li>
            </ol>
          </nav>
        </div><!-- End Page Title -->



        <section class="section area">
          <div class="row">
            <div class="col-lg-12">
    

              <!-- General Form Elements -->

                <div class="table-responsive">
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-xs-5">
                                    <h2>직원 리스트</h2>
                                </div>
                                <div class="col-xs-7">
                                    <a href="/staff-form" class="btn btn-primary"><i class="material-icons">&#xE147;</i> <span>직원 등록</span></a>	
                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>이름</th>						
                                    <th>입사일</th>
                                    <th>직책</th>
                                    <th>상태</th>
                                    <th>설정</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="staffs" items="${staffs}" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td><a href="#">${staffs.mbrNm}</a></td>
                                    <td>${staffs.mbrRegTm}</td>                        
                                    <td>
                                        <c:choose>
                                        <c:when test="${staffs.mbrPosition eq 0 }">마스터</c:when>
                                        <c:when test="${staffs.mbrPosition eq 1 }">관리자</c:when>
                                        <c:when test="${staffs.mbrPosition eq 2 }">직원</c:when>
                                        </c:choose>
                                    </td>
                                    <td>
                                    <c:choose>
                                        <c:when test="${staffs.mbrState eq 0 }"><span class="status text-danger">&bull;</span> 퇴근 </c:when>
                                        <c:when test="${staffs.mbrState eq 1 }"><span class="status text-success">&bull;</span> 근무 중 </c:when>
                                    </c:choose>
                                    
                                    </td>
                                    <td>
<!--                                         <a href="#" class="settings" title="Settings" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a> -->
                                        <a href="/staff/staffDel.do?seq=${staffs.mbrSeq}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
                                    </td>
                                </tr>
                                <c:if test="${status.step eq 1}">
                                
                                </c:if>
                                </c:forEach>

                                
                                <!-- <tr>
                                    <td>2</td>
                                    <td><a href="#">이강</a></td>
                                    <td>2022/05/04</td>                       
                                    <td>직원</td>
                                    <td><span class="status text-danger">&bull;</span> 퇴근 </td>
                                    <td>
                                        <a href="#" class="settings" title="Settings" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
                                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><a href="#">이박</a></td>
                                    <td>2022/06/01</td>
                                    <td>직원</td>
                                    <td><span class="status text-success">&bull;</span> 근무 중 </td>                        
                                    <td>
                                        <a href="#" class="settings" title="Settings" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
                                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
                                    </td>                        
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td><a href="#">박강</a></td>
                                    <td>2022/05/06</td>
                                    <td>직원</td>
                                    <td><span class="status text-success">&bull;</span> 근무중 </td>
                                    <td>
                                        <a href="#" class="settings" title="Settings" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
                                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td><a href="#"> </a></td>
                                    <td></td>                        
                                    <td></td>
                                    <td><span class="status text-warning"></span></td>
                                    <td>
                                        <a href="#" class="settings" title="Settings" data-toggle="tooltip"></i></a>
                                        <a href="#" class="delete" title="Delete" data-toggle="tooltip"></a>
                                    </td>
                                </tr> -->
                            </tbody>
                        </table>
                        <div class="clearfix">
                            <ul class="pagination justify-content-center">
                                <li class="page-item disabled"><a href="#">Previous</a></li>
                                <li class="page-item active"><a href="#" class="page-link">1</a></li>
                                <li class="page-item"><a href="#" class="page-link">2</a></li>
                                <li class="page-item"><a href="#" class="page-link">3</a></li>
                                <li class="page-item"><a href="#" class="page-link">4</a></li>
                                <li class="page-item"><a href="#" class="page-link">5</a></li>
                                <li class="page-item"><a href="#" class="page-link">Next</a></li>
                            </ul>
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