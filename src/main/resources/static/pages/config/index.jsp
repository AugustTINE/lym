<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="tags" tagdir="/tags" %>
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
									<h2>${form.formName}</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<form action="${ctx}config/from/${form.formCode}/index.html" method="post">
									 <%--<div class="form-inline">--%>
									    <%--<label for="exampleInputName2">应用名称：</label>--%>
									    <%--<input class="form-control" type="text" name="search_appName" value="${param.search_appName}">--%>
										<%----%>
										<%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
									    <%--<label for="exampleInputEmail2">状态：</label>--%>
									    <%--<select class="form-control" name="search_status"  value="${param.search_status}">     --%>
													  <%--<option value="">全部</option> --%>
													  <%--<option value="1" <c:if test="${'1' eq param.search_status}" >selected</c:if> >启用</option>     --%>
													  <%--<option value="0" <c:if test="${'0' eq param.search_status}" >selected</c:if> >禁用</option>  --%>
										<%--</select>  --%>
										<%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
										<%--<span><input type="submit" class="btn btn-sm btn-primary" value="查询"></span>--%>
										<%--<shiro:hasPermission name="application_manage_add">--%>
										<%--<span><input type="button" class="btn btn-sm btn-info" onclick="location.href='get.html'"  value="新增"></span>--%>
										<%--</shiro:hasPermission>--%>
										<%--<div class="ln_solid"></div>--%>
									  <%--</div>--%>
												
											<table class="table table-striped jambo_table bulk_action">
												<thead>
												<tr class="headings">
													<c:forEach var="formField" items="${formFields}">
														<c:if test="${formField.fieldShow==1}">
															<th class="column-title">${formField.fieldName}</th>
														</c:if>
													</c:forEach>
												</tr>
												</thead>
												<tbody>
													<c:forEach items="${page.content}" var="entity">
														<tr>
														<c:forEach var="formField" items="${formFields}">
															<th class="column-title">${entity[formField.fieldCode]}</th>
														</c:forEach>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div><tags:pagination paginationSize="10" page="${page}"/></div>
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