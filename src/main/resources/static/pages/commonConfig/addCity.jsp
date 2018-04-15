<%@page import="java.util.UUID" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tags" tagdir="/static/tags" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/static/pages/common/header.jsp" %>
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <!--左侧菜单-->
        <%@include file="/static/pages/common/menu.jsp" %>
        <!-- top navigation -->
        <%@include file="/static/pages/common/top.jsp" %>
        <!-- /top navigation -->
        <!-- page content -->
        <div class="right_col">
            <div class="row">
                <div class="page-title">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2><a href="${ctx}commonConfig/index.html">通用配置</a>-> ${entity.id != null?'编辑':'新增'}城市</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                         <c:if test="${commonConfig.cityType ne 2 }">
                            <form id="carCity" action="${ctx}commonConfig/addCity.html" method="post"
                                  class="form-horizontal form-label-left">
                                <input type="hidden" name="id" value="${commonConfig.id}"/>
                                <input type="hidden" name="cityType" value="1"/>

                                <div class="item form-group">
                                    <label class="control-label">专车城市 <span class="required">*</span>
                                    </label>
                              	      全选<input type="checkbox" id="btn1"/>&nbsp;&nbsp;&nbsp;
                                    <%--全不选<input type="checkbox" id="btn2"/>--%>
                                    <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <%--<div class="control-label col-md-3 col-sm-3 col-xs-12">--%>
                                    <c:forEach items="${cities}" var="city" varStatus="status">
                                        <input type="checkbox" name="city"
                                               value="${city.key}#${city.value}"/>${city.value}
                                        <c:if test="${status.count % 15 == 0}">
                                            <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </c:if>
                                    </c:forEach>
                                    <%--</div>--%>
                                </div>
                            </form>
                           </c:if> 
                               <div class="ln_solid"></div>
                            <c:if test="${commonConfig.cityType ne 1}">
                            <form id="taxiCity" action="${ctx}commonConfig/addCity.html"  method="post"
                                  class="form-horizontal form-label-left">
                                <input type="hidden" name="id" value="${commonConfig.id}"/>
								 <input type="hidden" name="cityType" value="2"/>
                               <div class="item form-group">
                                    <label class="control-label">出租车城市 <span class="required">*</span>
                                    </label>
                              	      全选<input type="checkbox" id="btn2"/>&nbsp;&nbsp;&nbsp;
                                    <%--全不选<input type="checkbox" id="btn2"/>--%>
                                    <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <%--<div class="control-label col-md-3 col-sm-3 col-xs-12">--%>
                                    <c:forEach items="${taxiCities}" var="city" varStatus="status">
                                        <input type="checkbox" name="taxiCity"
                                               value="${city.key}#${city.value}"/>${city.value}
                                        <c:if test="${status.count % 15 == 0}">
                                            <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </c:if>
                                    </c:forEach>
                                    <%--</div>--%>
                                </div>
                            </form>
                            </c:if>
                            <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <button type="button" onclick="window.history.go(-1)" class="btn btn-primary">
                                            取消
                                        </button>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <button type="button" id="btn3" class="btn btn-success">保存</button>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->
        <!-- footer content -->
        <%@include file="/static/pages/common/footer.jsp" %>
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
    var checkArray = new Array();
    <c:forEach items="${commonCities}" var="item" varStatus="status" >
        checkArray.push("${item.cityId}");
    </c:forEach>
    var cityTypeStatus="${commonConfig.cityType}"
    //点击全选的判断
    $("#btn1").click(function () {
        //看全选 是否被选中
        var ischeckAll = $("#btn1").is(':checked');
        var checkBoxAll = $("input[name='city']");
        if (ischeckAll) {
            //全部选中
           // $("input[name='city']").attr("checked", "true");
            $.each(checkBoxAll, function (i, checkbox) {
             $(checkbox).prop("checked", true);
             });
        } else {
            //全不选
           // $("input[name='city']").removeAttr("checked");
            $.each(checkBoxAll, function (i, checkbox) {
                $(checkbox).prop("checked", false);
            });
        }
    });
    //点击全选的判断
    $("#btn2").click(function () {
        //看全选 是否被选中
        var ischeckAll = $("#btn2").is(':checked');
        var checkBoxAll = $("input[name='taxiCity']");
        if (ischeckAll) {
            //全部选中
           // $("input[name='city']").attr("checked", "true");
            $.each(checkBoxAll, function (i, checkbox) {
             $(checkbox).prop("checked", true);
             });
        } else {
            //全不选
           // $("input[name='city']").removeAttr("checked");
            $.each(checkBoxAll, function (i, checkbox) {
                $(checkbox).prop("checked", false);
            });
        }
    });


    $(document).ready(function () {
        $("#yygl_li").attr("class", "current-page");
        $("#dxgl_li").attr("class", "active");
        $("#dxgl_li ul").show();
    });
   var num=0;
    $("#btn3").click(function () {
    	  var citySize = $("input[name='city']:checked");	
    	  var taxiCitySize= $("input[name='taxiCity']:checked");	
    	
    	  if(citySize.size()>0&&taxiCitySize.size()>0){
    		  alert("该配置只可配置一个城市列表，请重新选择！");
    		  return false;
    	  }
    	
    	 console.log(cityTypeStatus+"asdasdas")
    	  /* 一次保存时，必须有城市，用来保证，配置城市的类别是专车还是出租车 */
    	  if(citySize.size()==0&&taxiCitySize.size()==0&&(cityTypeStatus==null||cityTypeStatus=="")){
    		  alert("请选择城市，或取消返回！");
    		  return false;
    	  }
    	  if(citySize.size()>0||cityTypeStatus==1){
    	 $("#carCity").submit();
    	  }else if(taxiCitySize.size()>0||cityTypeStatus==2){
    	 $("#taxiCity").submit(); 
    	  }
    
  
    	
    })

    $(function () {
        //当页面加载完成的时候，自动调用该方法
        window.onload = function () {
            //获得所有的复选框对象
            
            var checkBoxAll = $("input[name='city']");
            for (var i = 0; i < checkArray.length; i++) {
                //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
                $.each(checkBoxAll, function (j, checkbox) {
                    //获取复选框的value属
                     var checkValue=$(checkbox).val();
                     if(checkArray[i]==checkValue.split("#")[0]) {
                        $(checkbox).attr("checked",true);
                     }
                })
            }
            if(cityTypeStatus==2){
            	
            var checkBoxAll = $("input[name='taxiCity']");
            for (var i = 0; i < checkArray.length; i++) {
                //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
                $.each(checkBoxAll, function (j, checkbox) {
                    //获取复选框的value属
                     var checkValue=$(checkbox).val();
                     if(checkArray[i]==checkValue.split("#")[0]) {
                        $(checkbox).attr("checked",true);
                     }
                })
            }
            }
        };
    });
</script>
</body>
</html>