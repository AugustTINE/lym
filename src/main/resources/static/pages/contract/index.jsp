<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="tags" tagdir="/static/tags"%>
<!DOCTYPE html>
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
			<div class="right_col">
				<div class="row">
					<div class="page-title">
						<div class="x_panel">
							<div class="x_title">
								<h2>通用配置--&gt;车载服务类型管理</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">

								<form action="${ctx}vehicle/index.html" method="post">
									<c:if test="${not empty msg}">
										<div id="message" class="alert ${result?"alert-success":"alert-warning"}">
											<button data-dismiss="alert" class="close">×</button>${msg}</div>
									</c:if>

									<table class="table table-striped jambo_table bulk_action">

										<tr>
											<td style="text-align: center; width: 100px;vertical-align:middle;"  nowrap="nowrap">标题</td>
											<td style="text-align: left;"><input
												value="${pojo.title}" id="title" name="title"
												class="form-control col-md-7 col-xs-12" style="width: 180px"
												type="text"></td>
										</tr>

										<tr>
											<td colspan="2">
												<button type="submit" class="btn btn-primary btn-xs">查询</button>
												<input type="button" class="btn btn-primary btn-xs"
												value="新建"
												onclick="window.location.href='${ctx}contract/toEdit.html'" />
											</td>
										</tr>

									</table>




									<table class="table table-striped jambo_table bulk_action">
										<thead>
											<tr class="headings">
												<th class="column-title">序号</th>
												<th class="column-title">标题</th>
												<th class="column-title">内容</th>
												<th class="column-title">顺序</th>
												<th class="column-title">操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${page.content}" var="entity">
												<tr>
													<th class="column-title">${entity.id}</th>
													<th class="column-title">${entity.title}</th>
													<th class="column-title">${entity.content}</th>
													<th class="column-title">${entity.rank}</th>
													<th class="column-title"><input type="button"
														class="btn btn-primary btn-xs" value="修改"
														onclick="window.location.href='${ctx}contract/toEdit.html?id=${entity.id}'" />
													</th>

												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div>
										<tags:pagination paginationSize="10" page="${page}" />
									</div>
								</form>
							</div>
						</div>
					</div>
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
	<script src="${ctx}resources/js/icheck.min.js"></script>
</body>
</html>