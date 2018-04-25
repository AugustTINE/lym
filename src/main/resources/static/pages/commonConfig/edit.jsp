<%@page import="java.util.UUID"%>
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
									<h2><a href="${ctx}commonConfig/index.html">通用配置</a>-> ${entity.id != null?'编辑':'新增'}配置</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<form action="${ctx}commonConfig/save.html" method="post" class="form-horizontal form-label-left" >
										<input type="hidden" name="id" name="id" value="${entity.id}" />

										<div class="item form-group">
										   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">配置名称 <span class="required">*</span>
										   </label>
										   <div class="control-label col-md-3 col-sm-3 col-xs-12">
											 <input value="${entity.name}"  id="name" name="name" class="form-control col-md-7 col-xs-12"  required="required" type="text">
										   </div>
										</div>
										<div class="item form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12" for="content">配置内容 
											</label>
											<div class="control-label col-md-3 col-sm-3 col-xs-12">
												<input value="${entity.content}"  id="content" name="content" class="form-control col-md-7 col-xs-12"  type="text">
											</div>
										</div>
										<div class="item form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12" for="status">状态 <span class="required">*</span>
											</label>
											<div class="control-label col-md-3 col-sm-3 col-xs-12">
												<select class="form-control" id="status" name="status">
													<option value="1" ${entity.status==1?'selected':''}>启用</option>
													<option value="0" ${entity.status==0?'selected':''}>禁用</option>
												</select>
											</div>
										</div>

										<div class="ln_solid"></div>
										<div class="form-group">
											<div class="col-md-6 col-md-offset-3">
											    <button type="button"  onclick="window.history.go(-1)" class="btn btn-primary">取消</button>
											    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											    <button type="submit" class="btn btn-success">保存</button>
											</div>
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
		$(document).ready(function(){ 
			$("#yygl_li").attr("class","current-page");
			$("#dxgl_li").attr("class","active");
			$("#dxgl_li ul").show();
		}); 
	</script>
	</body>
</html>