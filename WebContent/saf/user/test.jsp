<%@ page import="java.util.*"%>
<%@ page import="farm.farmDTO"%>
<%@ page import="user.usertableDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- bean setup  -->
<jsp:useBean id="user_dto" scope="page" class="user.usertableDTO" />
<jsp:useBean id="user_dao" scope="page" class="user.usertableDAO" />

<jsp:useBean id="farm_dto" scope="page" class="farm.farmDTO" />
<jsp:useBean id="farm_dao" scope="page" class="farm.farmDAO" />


<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Dashboard - Brand</title>
<link rel="stylesheet" href="../../common/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../../common/assets/fonts/fontawesome-all.min.css">
<link rel="stylesheet" href="../../common/assets/fonts/ionicons.min.css">
<link rel="stylesheet" href="../../common/assets/css/Login-Form-Dark.css">
<link rel="stylesheet" href="../../common/assets/css/untitled.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">

</head>

<body id="page-top">
	
	<%
		/* Session  Configuration */
		String user_id = (String) session.getAttribute("userId");
		String user_name = (String) session.getAttribute("userName");
		String user_auth = (String) session.getAttribute("userAuth");
		
		String tel = null;
		String FarmID =null;
		String farmname = null;
		String address = null;
		
		user_dto = user_dao.getuser(user_id);
		
		tel = user_dto.getUserTel(); // 전화번호
		FarmID = user_dto.getFarmId(); // 양식장 id

		ArrayList<farmDTO> fm_dto = farm_dao.getuserData(FarmID,user_id);

		farmname = farm_dto.getFarmName();
		address = farm_dto.getAddress();
	%>

	<div id="wrapper">
		<nav class="navbar navbar-dark bg-success align-items-start sidebar sidebar-dark bg-gradient-primary accordion p-0" style="background-color: rgb(198, 43, 43);">
			<div class="container-fluid d-flex flex-column p-0">
				<a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
					<div class="sidebar-brand-icon rotate-n-15">
						<i class="fas fa-fish"></i>
					</div>
					
					<div class="sidebar-brand-text mx-3">
						<span class="text-monospace">sMART AQUA FARM</span>
					</div>
				</a>
				<hr class="sidebar-divider my-0">
				
				<% if(user_auth.equals("sysadmin")){ %>
				<!-- Navigator Menu -->
				<ul class="nav navbar-nav text-light" id="accordionSidebar">
					<li class="nav-item" role="presentation"><a class="nav-link active" href="index.html">
						<i class="fas fa-tachometer-alt"></i>
						<span>모니터링</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="profile.html">
						<i class="fas fa-table"></i>
						<span>상태 기준 정보</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="table.html">
						<i class="fas fa-th-list"></i>
						<span>상태 기록</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="login.html">
						<i class="fas fa-record-vinyl"></i>
						<span>조치 기록</span>
						</a>
					</li>
					
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="register.html">
						<i class="fas fa-chart-bar"></i>
						<span>통계</span></a>
					</li>
						
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="register.html">
						<i class="fas fa-tint">
						</i><span>양식장 정보 관리</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">				
						<a class="nav-link" href="../farm/farmwtSearch.jsp">
						<i class="fas fa-water">
						</i><span>수조 정보</span>
						</a>
					</li>
					
				</ul>
				<!--  End Menu Navigator -->
				
				
				
				<% } else if(user_auth.equals("admin")) { %>
					
					<!-- Navigator Menu -->
				<ul class="nav navbar-nav text-light" id="accordionSidebar">
					<li class="nav-item" role="presentation"><a class="nav-link active" href="index.html">
						<i class="fas fa-tachometer-alt"></i>
						<span>모니터링</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="profile.html">
						<i class="fas fa-table"></i>
						<span>상태 기준 정보</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="table.html">
						<i class="fas fa-th-list"></i>
						<span>상태 기록</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="login.html">
						<i class="fas fa-record-vinyl"></i>
						<span>조치 기록</span>
						</a>
					</li>
					
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="register.html">
						<i class="fas fa-chart-bar"></i>
						<span>통계</span></a>
					</li>
						
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="register.html">
						<i class="fas fa-tint">
						</i><span>양식장 정보 관리</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">				
						<a class="nav-link" href="../farm/farmwtSearch.jsp">
						<i class="fas fa-water">
						</i><span>수조 정보</span>
						</a>
					</li>
					
				</ul>
				<!--  End Menu Navigator -->
					
				<% } else { %>
				
					<!-- Navigator Menu -->
				<ul class="nav navbar-nav text-light" id="accordionSidebar">
					<li class="nav-item" role="presentation"><a class="nav-link active" href="index.html">
						<i class="fas fa-tachometer-alt"></i>
						<span>모니터링</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="profile.html">
						<i class="fas fa-table"></i>
						<span>상태 기준 정보</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="table.html">
						<i class="fas fa-th-list"></i>
						<span>상태 기록</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="login.html">
						<i class="fas fa-record-vinyl"></i>
						<span>조치 기록</span>
						</a>
					</li>
					
					
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="register.html">
						<i class="fas fa-chart-bar"></i>
						<span>통계</span></a>
					</li>
						
					<li class="nav-item" role="presentation">
						<a class="nav-link" href="register.html">
						<i class="fas fa-tint">
						</i><span>양식장 정보</span>
						</a>
					</li>
					
					<li class="nav-item" role="presentation">				
						<a class="nav-link" href="../farm/farmwtSearch.jsp">
						<i class="fas fa-water">
						</i><span>수조 정보</span>
						</a>
					</li>
					
				</ul>
				<!--  End Menu Navigator -->
					
				
				
				<% } %>
				
				<div class="text-center d-none d-md-inline">
					<button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button>
				</div>
			</div>
		</nav>
		
		<div class="d-flex flex-column" id="content-wrapper">
			<div id="content">
				<!-- 상단 -->
				<nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
					<div class="container-fluid">
						<button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button">
							<i class="fas fa-bars"></i>
						</button>
						
						<!--  상단 페이지 제목 -->
						<h3 class="text-dark mb-0 navbar-brand">
							<strong>모니터링</strong>
						</h3>
						<form class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
							<div class="input-group">
								<div class="input-group-append"></div>
							</div>
						</form>
						
						<ul class="nav navbar-nav flex-nowrap ml-auto">
							<li class="nav-item dropdown no-arrow mx-1" role="presentation"></li>
							<li class="nav-item dropdown no-arrow mx-1" role="presentation">
								<div class="shadow dropdown-list dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown"></div>
							</li>
							<div class="d-none d-sm-block topbar-divider"></div>
							
							
							<!--  USER Management  -->
							<li class="nav-item dropdown no-arrow" role="presentation">
								<div class="nav-item dropdown no-arrow"> <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#">
									<span class="d-none d-lg-inline mr-2 text-gray-600 small"><%=user_name %></span>
									<img class="border rounded-circle img-profile" src="../../common/assets/img/avatars/avatar1.jpeg"></a>
									
									<div class="dropdown-menu shadow dropdown-menu-right animated--grow-in" role="menu">
										<a class="dropdown-item" role="presentation" href="../user/userInfo.jsp">
										<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;회원 정보</a>
										
										<div class="dropdown-divider"></div> <a class="dropdown-item" role="presentation" href="../auth/logoutPrc.jsp">
										<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;로그아웃</a>
									</div>
								</div>						
							</li>							
						</ul>
						
					</div>
				</nav>
				
					
	<div class="title">
		<h2>사용자 정보 관리</h2>
		<a onclick="MoveMyPage()">안녕하세요 <%=user_name%>님 </a>
	</div>
	<div></div>

	<article>

		<div class="wrapper">
			<!-- PRICING-TABLE CONTAINER -->
			<div class="pricing-table group">
				<h1 class="heading">사용자 정보 관리</h1>
			</div>
		
			<div class=user_manage_form>
				<form class=userInfoForm>
				<% if(user_auth.equals("user")){ %>
				<% }else{ %>
					<input type="button" style="width:80px;" value="사용자관리"> 
					<% } %>
					<input type="button" onclick="location.href='userUpdateForm.jsp'" value="수정"> 
					<input type="button" onclick="location.href='../main/index.jsp'" value="취소">
				</form>
				<br> <span class=formBox1>
					<div class=up_text>반갑습니다</div> <br>
				<hr>
					<div class=down_text><%=user_dto.getUserName()%> 반갑습니다</div>

				</span> <br>
				<br>
				<br>
				<br>
				<!-- End FormBox -->
				<span class=formBox1>
					<div class=up_text>직책</div> <br>
				<hr>
					<div class=down_text><%= user_auth %></div>
				</span>
				<!-- End FormBox -->
				<br>
				<br>
				<br>
				<br> <span class=formBox1>
					<div class=up_text>연락처</div> <br>
				<hr>
					<div class=down_text><%= tel %></div>
				</span>
				<!-- End FormBox -->
				<br>
				<br>
				<br>
				<br> <span class=formBox1>
					<div class=up_text>소속 양식장</div> <br>
				<hr>
				<% 
				for(int i =0; i<fm_dto.size(); i++){ %>
					<div class=down_text> 양식장 이름 : <%= fm_dto.get(i).getFarmName() %> &nbsp;&nbsp;&nbsp;&nbsp; 양식장 주소 :  <%= fm_dto.get(i).getAddress() %> </div>
					<% } %>
				</span>
				<!-- End FormBox -->
			</div>
			
	

		</div>

	</article>
					

                
                
				</div>
				<!-- END LINE -->
				</div>
				
			</div>
			<footer class="bg-white sticky-footer">
				<div class="container my-auto">
					<div class="text-center my-auto copyright">
						<span>Copyright © Mokpo National University&nbsp; 2020</span>
					</div>
				</div>
			</footer>
		</div>
		<a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
	</div>

<script src="../../common/func/monitoring.js"> </script>
<script src="../../common/assets/js/jquery.min.js"></script>
<script src="../../common/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../../common/assets/js/theme.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>

</body>

</html>