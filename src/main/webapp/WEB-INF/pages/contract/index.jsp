<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@include file="/WEB-INF/pages/common/header.jsp"%>
</head>
<body class="nav-md">
<div class="container body">
	<div class="main_container">
		<!--左侧菜单-->
		<%@include file="/WEB-INF/pages/common/menu.jsp"%>
		<!-- top navigation -->
		<%@include file="/WEB-INF/pages/common/top.jsp"%>
		<!-- /top navigation -->
		<!-- page content -->
		<div class="right_col">
			<div class="row">
				<div class="page-title">
					<div class="x_panel">

						<div class="x_title">
							<ol class="breadcrumb">
								<li><a href="${ctx}contractManager/index">合同数据</a></li>
								<li class="active">合同列表</li>
							</ol>
						</div>
						<div class="x_content">
							<form action="${ctx}contractManager/index.html" method="post">
								<c:if test="${not empty msg}">
									<div id="message" class="alert ${result?"alert-success":"alert-warning"}">
										<button data-dismiss="alert" class="close">×</button>${msg}</div>
								</c:if>

								<%--<table class="table table-striped jambo_table bulk_action">

									<tr>
										<td style="text-align: right; width: 50px;vertical-align:middle;"  nowrap="nowrap">名称</td>
										<td style="text-align: left;width: 100px"><input value="${pojo.title}" id="title" name="title" class="form-control" style="width: 180px" type="text"></td>
										<td style="text-align: center; width: 100px;vertical-align:middle;"  nowrap="nowrap">城市</td>
										<td style="text-align: left;width: 200px">
											<select class="form-control" id="cityId" name="cityId">
												<option value="">请选择</option>
												<c:forEach items="${cities}" var="city" varStatus="status">
													<option value="${city.key}" ${city.key==pojo.cityId?'selected':''}>${city.value}</option>
												</c:forEach>
											</select>
										</td>
										<td style="text-align: center; width: 100px;vertical-align:middle;"  nowrap="nowrap">服务类型</td>
										<td style="text-align: left;width: 200px">
											<select class="form-control" id="serviceTypeId" name="serviceTypeId">
												<option value="">请选择</option>
												<c:forEach items="${serviceTypes}" var="serviceType" varStatus="status">
													<option value="${serviceType.serviceId}" ${serviceType.serviceId==pojo.serviceTypeId?'selected':''}>${serviceType.serviceName}</option>
												</c:forEach>
											</select>
										</td>

									</tr>

									<tr>
										<td colspan="6">
											<button type="submit" class="btn btn-primary btn-xs">查询</button>
											<input type="button" class="btn btn-primary btn-xs"
												   value="新建"
												   onclick="window.location.href='${ctx}couponConfig/toEdit.html'" />
										</td>
									</tr>

								</table>--%>
								<div style="height: 45px"><input type="button" class="btn btn-primary btn-xs" value="录入合同数据" onclick="window.location.href='${ctx}contractManager/toEdit'" /></div>
								<table class="table table-striped jambo_table bulk_action">
									<thead>
									<tr class="headings">
										<th class="column-title">编号</th>
										<th class="column-title">大区</th>
										<th class="column-title">城市</th>
										<th class="column-title">合同名称</th>
										<th class="column-title">签署日期</th>
										<th class="column-title">签署人</th>
										<th class="column-title">操作</th>
									</tr>
									</thead>
									<tbody>
									<c:forEach items="${page.content}" var="entity">
										<tr>
											<th class="column-title" style="width:60px;">${entity.id}</th>
											<th class="column-title" style="width:80px;">${entity.bigArea}</th>
												<%--<th class="column-title" style="width:200px;"><fmt:formatDate value="${entity.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;&nbsp;-&nbsp;&nbsp;<fmt:formatDate value="${entity.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/></th>--%>
											<th class="column-title" style="width:80px;">${entity.city}</th>
											<th class="column-title" style="width:150px;">${entity.contractName}</th>
											<th class="column-title" style="width:150px;"><fmt:formatDate value="${entity.signDate}" pattern="yyyy-MM-dd"/>
											<th class="column-title" style="width:60px;">${entity.signPerson}</th>
											<th class="column-title" style="width:120px;">
												<input type="button" class="btn btn-primary btn-xs" value="查看" onclick="window.location.href='${ctx}contractManager/toEdit?id=${entity.id}'" />
												<input type="button" class="btn btn-danger btn-xs" value="删除" onclick="if(confirm('确认删除该配置吗？')){window.location.href='${ctx}contractManager/deleteConfig?id=${entity.id}'}" />
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
		<%@include file="/WEB-INF/pages/common/footer.jsp"%>
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
<script src="${ctx}/js/icheck.min.js"></script>
<script>
    $("th, td") .css("text-align" ,"center");
</script>
</body>
</html>