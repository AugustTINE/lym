<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<%@include file="/static/pages/common/header.jsp"%>
	</head>
	<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<!--左侧菜单-->
			<%@include file="/static/pages/common/menu.jsp"%>
			<!-- top navigation -->
			<%@include file="/static/pages/common/top.jsp"%>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					
				</div>
			</div>
			<!-- /page content -->
			<!-- footer content -->
			<%@include file="/static/pages/common/footer.jsp"%>
			<!-- /footer content -->
		</div>
	</div>
	<!-- jQuery -->
	<script src="${ctx}resources/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="${ctx}resources/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="${ctx}resources/js/fastclick.js"></script>
	<!-- NProgress -->
	<script src="${ctx}resources/js/nprogress.js"></script>
	<!-- jQuery Sparklines -->
	<!-- bootstrap-daterangepicker -->
	<script src="${ctx}resources/js/moment/moment.min.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="${ctx}resources/js/custom.min.js"></script>
	</body>
</html>
</html>