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
									<h2><a href="${ctx}config/form/${form.formCode}/index.html">通用配置</a>-> ${form.formName}</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<c:if test="${not empty msg}">
										<div id="message" class="alert alert-success">
											<button data-dismiss="alert" class="close">×</button>${msg}</div>
									</c:if>
									<form action="${ctx}config/form/${form.formCode}/save.html" method="post" class="form-horizontal form-label-left" >
					 				  <input type="hidden" name="batchNo"  value="${batchNo}" />
									  	<c:forEach var="m" items="${data}">
											<div class="item form-group" style="">
											<label class="control-label col-md-3 col-sm-3 col-xs-12">${m['fieldName']} <span class="required">*</span>
											</label>
												<div class="control-label col-md-3 col-sm-3 col-xs-12" style="text-align:left;margin-top:-5px">
													<c:if test="${m['fieldType'] eq 'input'}">
														<input type="text" name="${m['fieldCode']}" class="form-control col-md-7 col-xs-12"  value="${m['fieldValue']}">
													</c:if>
													<c:if test="${m['fieldType'] eq 'textarea'}">
														<textarea class="form-control col-md-7 col-xs-12"  name="${m['fieldCode']}">${m['fieldValue']}</textarea>
													</c:if>
													<c:if test="${m['fieldType'] eq 'radio'}">
														<c:forEach var="r" items="${m.radioFieldList}">
															<c:choose>
																<c:when test="${m['fieldValue'] eq r['radioFieldValue']}">
																	<label class="checkbox-inline">
																		<input name="${m['fieldCode']}"  checked  type="radio" value="${r['radioFieldValue']}" />${r['radioFieldName']}
																	</label>
																</c:when>
																<c:otherwise>
																	<label class="checkbox-inline">
																		<input name="${m['fieldCode']}"   type="radio" value="${r['radioFieldValue']}" />${r['radioFieldName']}
																	</label>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</c:if>
												</div><label class="control-label">${m['fieldUnit']}</label>
										  </div>
										</c:forEach>
									  <div class="ln_solid"></div>
									  <div class="form-group">
										<div class="col-md-6 col-md-offset-3">
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