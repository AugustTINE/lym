<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@include file="/WEB-INF/pages/common/header.jsp"%>
	<style>
		.is_disabled {
			background-color: #CCCCCC;
			pointer-events: none;
		}
	</style>
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
								<li><a href="${ctx}contractManager/index">合同信息</a></li>
								<li class="active">${configInfo.id == null?'新增':'查看'}合同</li>
							</ol>
						</div>
						<div class="x_content">
							<form action="${ctx}contractManager/update.html" method="post" class="form-horizontal form-label-left"  onsubmit="return toVaild()" >
								<input type="hidden" id="id" name="id" value="${configInfo.id}">
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="bigArea">大区<span class="required">:</span>
									</label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input id="bigArea" name="bigArea" class="form-control col-md-7 col-xs-12" value="${configInfo.bigArea}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="city">城市<span class="required">:</span>
									</label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input id="city" name="city" class="form-control col-md-7 col-xs-12" value="${configInfo.city}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="contractName">合同名称<span class="required">:</span>
									</label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input id="contractName" name="contractName" class="form-control col-md-7 col-xs-12" value="${configInfo.contractName}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="signTime">签署日期<span class="required">:</span>
									</label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input id="signTime" name="signTime" class="form-control col-md-7 col-xs-12" value="${signTime}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="invalidDate">到期时间<span class="required">:</span></label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input id="invalidDate" name="invalidDate" class="form-control col-md-7 col-xs-12" value="${invalidDate}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="signPerson">签署人<span class="required">:</span>
									</label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input id="signPerson" name="signPerson" class="form-control col-md-7 col-xs-12" value="${configInfo.signPerson}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="deviceNum">设备数量<span class="required">:</span></label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input type="text"  id="deviceNum" name="deviceNum" class="form-control col-md-7 col-xs-12" value="${configInfo.deviceNum}">
									</div>
								</div>

								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="deviceInfo">设备编号<span class="required">*</span></label>
									<div class="control-label col-md-3 col-sm-3 col-xs-12">
										<input type="text"  id="deviceInfo" name="deviceInfo" class="form-control col-md-7 col-xs-12" value="${configInfo.deviceInfo}">
									</div>

                                    <div class="control-label col-md-1 col-sm-1 col-xs-6">
                                        <!-- Large modal -->
                                        <span><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#showModal">设备详情</button></span>
                                        <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" id="showModal">
                                            <div class="modal-dialog modal-lg" role="document" style="width: 50%">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Modal title</h4>
                                                    </div>
                                                    <div class="modal-body">
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
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
								</div>

								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="rentPer">每台租金<span class="required">:</span></label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input type="text" id="rentPer" name="rentPer" class="form-control col-md-7 col-xs-12" value="${configInfo.rentPer}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="payment">支付方式<span class="required">:</span></label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input type="text" id="payment" name="payment" class="form-control col-md-7 col-xs-12" value="${configInfo.payment}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="payDateRecent">近期支付时间<span class="required">:</span></label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input type="text" id="payDateRecent" name="payDateRecent" class="form-control col-md-7 col-xs-12" value="${configInfo.payDateRecent}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="payDateNext">下次支付时间<span class="required">:</span></label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input type="text" id="payDateNext" name="payDateNext" class="form-control col-md-7 col-xs-12" value="${configInfo.payDateNext}">
									</div>
								</div>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12" for="comments">备注<span class="required">:</span></label>
									<div class="control-label col-md-4 col-sm-4 col-xs-12">
										<input type="text" id="comments" name="comments" class="form-control col-md-7 col-xs-12" value="${configInfo.comments}">
									</div>
								</div>

								<div class="ln_solid"></div>
								<div class="form-group">
									<div class="col-md-6 col-md-offset-3">
										<button type="button"  onclick="window.history.go(-1)" class="btn btn-primary">取消</button>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button type="button" class="btn btn-primary" id="modify">修改</button>
										<button id="submit" class="btn btn-success">保存</button>
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
		<%@include file="/WEB-INF/pages/common/footer.jsp"%>
		<!-- /footer content -->
	</div>
</div>
<script src="${ctx}/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${ctx}/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${ctx}/js/fastclick.js"></script>
<!-- NProgress -->
<script src="${ctx}/js/nprogress.js"></script>
<!--Layer Date-->
<script src="${ctx}/js/laydate/laydate.js"></script>
<!-- jQuery Sparklines -->
<!-- bootstrap-daterangepicker -->
<script src="${ctx}/js/moment/moment.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="${ctx}/js/custom.min.js"></script>

<script>
    laydate.render({
        elem: '#signTime' //指定元素
        , format: 'yyyy-MM-dd HH:mm:ss'
        ,type:'datetime'
    });
    laydate.render({
        elem: '#invalidDate' //指定元素
        , format: 'yyyy-MM-dd HH:mm:ss'
        ,type:'datetime'
    });

    $("#modify").click(function () {
        $("input").removeClass("is_disabled");
        $("#submit").removeClass("hidden");
        $("#modify").addClass("hidden");
    });

    $(document).ready(function(){
        if ($("#id").val() == ""){
            $("#modify").addClass("hidden");
        }else{
            $("#submit").addClass("hidden");
            $("input").addClass("is_disabled");
        }
    });

    function showModal() {
        $("#showModal").modal({
            remote: "${ctx}deviceInfo/checkDevices?deviceInfo=" + $("#deviceInfo").val()
        });
    }

    var mod = $("#showModal");
    mod.on("show.bs.modal", function() {
        // 关键代码，如没将modal设置为 block，则$modala_dialog.height() 为零 模态窗口居中
        $(this).css('display', 'block');
        var modalHeight=$(window).height() / 3 - $('#youModel .modal-dialog').height() / 3;
        $(this).find('.modal-dialog').css({
            'margin-top': modalHeight
        });

        $.ajax({
            type:"post",
            url:"${ctx}deviceInfo/checkDevices?deviceInfo=" + $("#deviceInfo").val(),
            success:function(data){
                var dataJson = eval('(' + data + ')');
                var datalist = dataJson.keys;
            }
        })
    });
    mod.on("hidden.bs.modal", function() {
        $(this).removeData("bs.modal");
    });


</script>
</body>
</html>