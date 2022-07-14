<!DOCTYPE html>
<html lang="ko">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>EVpoly Home</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/image/logo.png"
	rel="icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/quill/quill.snow.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/quill/quill.bubble.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/simple-datatables/style.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">

</head>

<!-- JAVASCRIPT FUNCTION -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript">



const b64toBlob = (b64Data, contentType='', sliceSize=512) => {
	  const byteCharacters = atob(b64Data);
	  const byteArrays = [];

	  for (let offset = 0; offset < byteCharacters.length; offset += sliceSize) {
	    const slice = byteCharacters.slice(offset, offset + sliceSize);

	    const byteNumbers = new Array(slice.length);
	    for (let i = 0; i < slice.length; i++) {
	      byteNumbers[i] = slice.charCodeAt(i);
	    }

	    const byteArray = new Uint8Array(byteNumbers);
	    byteArrays.push(byteArray);
	  }

	  const blob = new Blob(byteArrays, {type: contentType});
	  return blob;
	}


 $(document).ready(function(){
         $.ajax({
             async : true, // 기본값은 true
             type : "GET",
             url : "http://localhost:8080/history-date.do",
             success : function(data) {

                var tempHtml = "";
                var tempOption ="";
                var optionArr= [];
                
                $(data).each(function(){

                	const contentType = 'image/png';
                	const b64Data = this.carImg

                	const blob = b64toBlob(b64Data, contentType);
                	
                	const blobUrl = URL.createObjectURL(blob);
                	
                	
                    tempHtml += 
                    '<div class="aboutcar col-6 '+this.pkgAreaName+'">' +
                    '<div class="card"id="carcard" style="overflow: hidden;'+
                    'white-space: nowrap;overflow-x:auto;">'+
                      '<div class="card-body">'+
                      '<h5 class="carname area-title-ko">'+ this.carNum +'</h5>'+
                        '<div class="carpic">'+
                          '<div class="d-flex align-items-center">'+
                            '<div class="post-item clearfix" >'+
                              '<img src=' + blobUrl + ' alt="carimg" >'+
                            '</div>'+
                              '<h4 class="col-6 clear fix mt-2"style="margin-left: 40px;">'+
                                '<p>고속 충전 구역</p>'+
                                '<p>'+ this.linSeqName +'</p>'+
                                '<p>[충전시간] <span>'+ this.violationTm +'</span></p>'+
                              '</h4>'+
                            '</div>'+
                            
                            '<div class = "clearfix">'+
                            '<button class="btn btn-outline-primary" style="float:right;" type="button" onClick="location.href='+""+"'history-carnum'"+ '">차량자세히</button>'+
                            '</div>'+
                        '</div>'+
                      '</div>'+
                    '</div>'+
                  '</div>'
                  
                    optionArr.push(this.pkgAreaName);
	                 
                });
         
                var newArr = [...new Set(optionArr)];
                console.log(newArr);
                
                for(var i =0; i<newArr.length; i++){
                	
                  tempOption += '<option id="building'+ (i+1) +'" value="' + newArr[i] +'" >'+newArr[i]+'</option>' 
                  
                }
             	
                
                 $("#hereUhTae").append(tempHtml);
                 $("#building").append(tempOption);
                 
                 
                 
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
			<a href="index" class=" logo d-flex align-items-center"> <img
				src="${pageContext.request.contextPath}/image/EVPOLY_bl.png" alt="">
			</a> <i class="bi bi-list toggle-sidebar-btn" style="color: #3A4CA8"></i>
		</div>
		<!-- End Logo -->

		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">
				<li class="nav-item dropdown pe-3"><a
					class="nav-link nav-icon d-flex align-items-center pe-0"
					href="login"> <i class="bi bi-box-arrow-right" alt="btn"
						style="color: #3A4CA8;"></i>
				</a></li>

			</ul>
		</nav>
		<!-- End Icons Navigation -->

	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item"><a class="nav-link  collapsed" href="index">
					<i class="bi bi-house"></i> <span>HOME</span>
			</a></li>
			<!-- End HOME Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#manage-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-menu-button-wide"></i><span>주차관리</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="manage-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="manage-area"> <i class="bi bi-circle"></i><span>전체구역</span>
					</a></li>
				</ul></li>
			<!-- End 주차관리 Nav -->

			<li class="nav-item"><a class="nav-link"
				data-bs-target="#history-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>주차내역</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="history-nav" class="nav-content collapse show"
					data-bs-parent="#sidebar-nav">
					<li><a href="history-date" class="active"> <i
							class="bi bi-circle"></i><span>날짜별 관리</span>
					</a></li>
					<li><a href="history-carnum"> <i class="bi bi-circle"></i><span>차량번호별
								관리</span>
					</a></li>
				</ul></li>
			<!-- End 주차내역 Nav -->



			<li class="nav-item"><a class="nav-link collapsed" href="notice">
					<i class="bi bi-question-circle"></i> <span>공지사항</span>
			</a></li>
			<!-- End 공지사항 Page Nav -->


			<li class="nav-item"><a class="nav-link collapsed" href="staff">
					<i class="bi bi-person"></i> <span>직원정보</span>
			</a></li>
			<!-- End 직원정보 page Nav -->
	</aside>
	<!-- End Sidebar-->


	<main id="main" class="main">

		<div class="pagetitle">
			<h1>날짜별 관리</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index">Home</a></li>
					<li class="breadcrumb-item">주차 내역</li>
					<li class="breadcrumb-item active">날짜별 관리</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->


		<section class="section area">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<!-- 조건 선택-->
							<form>
								<div class="row mt-3 mb-3">
									<div class="col-sm-3">
										<div class="form-floating mb-3">
											<select class="form-select" id="building"
												aria-label="Floating label select example">
												<option id="building0" value="0">선택하세요.</option>
											</select> <label for="floating">건물명</label>
										</div>
									</div>
									<div class="col-sm-2">
										<input type="date" style="height: 58px" class="form-control"
											id="Date">
									</div>
									<!-- 오늘 날짜 받아오기 -->
									<script>                      
                                    Date.prototype.toDateInputValue = (function() { 
                                    var local = new Date(this); 
                                    local.setMinutes(this.getMinutes() - this.getTimezoneOffset()); 
                                    return local.toJSON().slice(0,10); 
                                    }); 
                                    document.getElementById('Date').value = new Date().toDateInputValue(); 
                                    var now_utc = Date.now()
                                    var timeOff = new Date().getTimezoneOffset()*60000;
                                    var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
                                    document.getElementById("Date").setAttribute("max", today);

                                </script>

									<div class="form-check col-sm-2">
										<input class="form-check-input" type="checkbox" id="nowcar"
											name="nowcar" checked> <label
											class="form-check-label p-lg-1"> 현재 주차 차량 </label>
									</div>




									<div class="search col-sm-3 ">
										<form class="search-form d-flex align-items-center"
											method="POST" action="#">
											<input type="text" placeholder="차량번호 입력" style="height: 58px"
												onkeyup="filter()" id="search">
											<button type="submit" title="Search">
												<i class="bi bi-search fs-5"></i>
											</button>
										</form>
									</div>
								</div>

								<div class="carlist d-flex" sytle="padding;">
									<div class="card scroll-card"
										style="overflow-x: hidden; overflow-y: auto; width: 100%; height: 500px;">

										<div class="box" id="build1">
											<div id="hereUhTae" class="row"></div>
										</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>


	</main>
	<!-- End #main -->
	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">

		<div class="credits">
			Project EVpoly. HUSTAR ICT</a>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="${pageContext.request.contextPath}/vendor/apexcharts/apexcharts.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/quill/quill.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/simple-datatables/simple-datatables.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/tinymce/tinymce.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/php-email-form/validate.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


	<script>

      </script>

	<script>
	 $(document).ready(function(){
         $('#building').on('change', function(){
        	var e = document.getElementById("building");
        	var seq = e.options[e.selectedIndex].value; 

        	let aboutcar = document.getElementsByClassName("aboutcar");
            
            let selectView = document.getElementsByClassName(seq);
            for (let i = 0; i < aboutcar.length; i++) {
            	aboutcar[i].style.display="none"
			}
			for (let i = 0; i < selectView.length; i++) {
				selectView[i].style.display="block"
			}
             
         });
     });
      </script>

	<script>
        function filter() {
        let search = document.getElementById("search").value.toLowerCase();
        
        let aboutcar = document.getElementsByClassName("aboutcar");

        for (let i = 0; i < aboutcar.length; i++) {
          carname = aboutcar[i].getElementsByClassName("carname");
          if (carname[0].innerHTML.toLowerCase().indexOf(search) != -1) {
            aboutcar[i].style.display = "block"
          } else {
            aboutcar[i].style.display = "none"
          }
        }
      }
      </script>



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