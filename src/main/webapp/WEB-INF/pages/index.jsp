<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<%@include file="common/header.jsp"%>
	</head>
	<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<!--左侧菜单-->
			<%@include file="common/menu.jsp"%>
			<!-- top navigation -->
			<%@include file="common/top.jsp"%>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					
				</div>
			</div>
			<!-- /page content -->
			<!-- footer content -->
			<%@include file="common/footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>
	<!-- jQuery -->
	<script src="${ctx}/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="${ctx}/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="${ctx}/js/fastclick.js"></script>
	<!-- NProgress -->
	<script src="${ctx}/js/nprogress.js"></script>
	<!-- jQuery Sparklines -->
	<!-- bootstrap-daterangepicker -->
	<script src="${ctx}/js/moment/moment.min.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="${ctx}/js/custom.min.js"></script>
	</body>
</html>
</html>