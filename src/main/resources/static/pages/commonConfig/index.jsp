<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="tags" tagdir="/static/tags" %>
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
									<h2>通用配置</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
								
									<form action="#" method="post">
									<c:if test="${not empty msg}">
										<div id="message" class="alert ${result?"alert-success":"alert-warning"}"><button data-dismiss="alert" class="close">×</button>${msg}</div>
									</c:if>

										<input type="button" class="btn btn-primary btn-xs" value="增加通用配置" onclick="window.location.href='${ctx}commonConfig/toEdit.html'" />


										<table class="table table-striped jambo_table bulk_action">
												<thead>
													<tr class="headings">
														<th class="column-title">编号</th>
														<th class="column-title">配置名称</th>
														<th class="column-title">配置内容</th>
														<th class="column-title">状态</th>
														<th class="column-title">创建时间</th>
														<th class="column-title">操作</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${page.content}" var="entity">
														<tr>
															<th class="column-title">${entity.id}</th>
															<th class="column-title">${entity.name}</th>
															<th class="column-title">${entity.content}</th>
															<th class="column-title">
																<c:if test="${entity.status == 1}">启用</c:if>
																<c:if test="${entity.status == 0}">禁用</c:if>
															</th>
															<th class="column-title">
																<fmt:formatDate value="${entity.createAt}"   pattern="yyyy-MM-dd hh:mm:ss" type="date" dateStyle="long" />
															</th>
															<th class="column-title">
																<input type="button" class="btn btn-primary btn-xs" value="增加城市列表" onclick="window.location.href='${ctx}commonConfig/toAddCity.html?id=${entity.id}'" />
																<input type="button" class="btn btn-primary btn-xs" value="查看城市列表" onclick="window.location.href='${ctx}commonConfig/cityList.html?id=${entity.id}'" />
																<input type="button" class="btn btn-primary btn-xs" value="修改" onclick="window.location.href='${ctx}commonConfig/toEdit.html?id=${entity.id}'" />
																<c:if test="${entity.status == 1}"><input type="button" class="btn btn-danger btn-xs" value="禁用" onclick="window.location.href='${ctx}commonConfig/changeStatus.html?id=${entity.id}&status=0'" /></c:if>
																<c:if test="${entity.status == 0}"><input type="button" class="btn btn-primary btn-xs" value="开启" onclick="window.location.href='${ctx}commonConfig/changeStatus.html?id=${entity.id}&status=1'" /></c:if>

															</th>

														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div><tags:pagination paginationSize="10" page="${page}"/></div>
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
	<script language="JavaScript">
		function operate(id,status,name) {
			var title="确定要禁用【"+name+"】吗?";
		    if(status==1){
                title="确定要启用【"+name+"】吗?";
			}
            if(confirm(title)){
                $.ajax({
                    type:"POST",
                    url:"${ctx}application/operate.html",
                    data:{"id":id,"status":status},
                    success:function(data) {
                        if(data=='success'){
                        	window.location.reload();
                        }
                    },
                    error:function (e) {
                        alert("操作，请稍后重试！");
                    }
                });
            }
        }
	</script>
	</body>
</html>