<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<head>
<script src="https://kit.fontawesome.com/584c0e6452.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/image/evpoly.ico">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- FontAwesome CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/uf-style.css">
<title>EVpoly</title>
</head>
<body>
	<div class="uf-form-signin h-75">
		<div class="text-center ">
			<img src="${pageContext.request.contextPath}/image/logo.png" alt="" width="300" height="300"></a>

		</div>
		<form class="mt-4" id="loginform" method="post" action="">
			<div class="input-group uf-input-group input-group-lg mb-3">
				<span style="color: #3A4CA8" , class="input-group-text fa fa-user"></span>
				<input type="text" class="form-control" id="mbrId" name="mbrId"
					placeholder="아이디">
			</div>
			<div class="input-group uf-input-group input-group-lg mb-3">
				<span style="color: #3A4CA8" , class="input-group-text fa fa-lock"></span>
				<input type="password" class="form-control" id="mbrPw" name="mbrPw"
					placeholder="비밀번호">
			</div>
			<div class="d-flex mb-3 justify-content-between">
				<div class="form-check">
					<input type="checkbox" class="form-check-input uf-form-check-input"
						id="exampleCheck1"> <label
						class="form-check-label text-dark" for="exampleCheck1" id="idsave">로그인
						저장하기</label>
				</div>
			</div>
			<div class="d-grid mb-4">
				<button type="button" id="loginBtn"
					class="btn uf-btn-primary btn-lg">로그인</button>
			</div>

			<!-- JavaScript -->
			<script type="text/javascript">
				$(document).ready(
						function() {
							$("#loginBtn").click(
									function() {
										if ($("#mbrId").val() == "") {
											alert("아이디를 입력하여 주세요.");
											return;
										} else if ($("#mbrPw").val() == "") {
											alert("비밀번호를 입력하여 주세요.");
											return;
										} else {
											$("#loginform").attr("action",
													"${root}/login")
													.submit();
										}
									});
						});
			</script>

		</form>
		<!-- Separate Popper and Bootstrap JS -->
		<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>