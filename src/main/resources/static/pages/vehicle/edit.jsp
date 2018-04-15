<%@page import="java.util.UUID"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="tags" tagdir="/static/tags" %>
<!DOCTYPE html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<%@include file="/static/pages/common/header.jsp"%>
			<link rel="stylesheet" href="${ctx}resources/css/bootstrap-fileinput/fileinput.css" />
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
									<h2><a href="${ctx}vehicle/index.html">车载服务类型管理</a>-> ${entity.id != null?'编辑':'新增'}配置</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<form action="${ctx}vehicle/save.html" method="post" class="form-horizontal form-label-left"  onsubmit="return toVaild()" >
										<input type="hidden" name="id" id="id" value="${entity.id}" />
										<input type="hidden" name="imageUrl" id="imageUrl" value="${entity.imageUrl}"   />

										<div class="item form-group">
										   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title">标题<span class="required">*</span>
										   </label>
										   <div class="control-label col-md-3 col-sm-3 col-xs-12">
											 <input value="${entity.title}"  id="title" name="title" class="form-control col-md-7 col-xs-12"  required="required" type="text">
										   </div>
										</div>

										<div class="item form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12" for="title">内容<span class="required">*</span>
											</label>
											<div class="control-label col-md-3 col-sm-3 col-xs-12">
												<input value="${entity.content}"  id="content" name="content" class="form-control col-md-7 col-xs-12"  required="required" type="text">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12">图标:<span class="required">*</span>
											</label>
											<div id="myfile1div" class="col-md-6 col-sm-6 col-xs-12">

													<span class="uploadSpan">
														<div id="imageHtml"></div>
														<input type="file" onchange="FileUtil.upload(this)" style="display:none;">
													</span>
												<input id="myfile1" name="myfile1" type="file" class="file">
											</div>
										</div>


										
										<div class="item form-group">
										   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="rank">顺序<span class="required">*</span>
										   </label>
										  	<div class="control-label col-md-3 col-sm-3 col-xs-12">
											 <input value="${entity.rank}"  id="rank" name="rank" class="form-control col-md-7 col-xs-12"   required="required" type="number">
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
		<script src="${ctx}resources/js/My97DatePicker/WdatePicker.js"></script>
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
		<script src="${ctx}resources/js/bootstrap-fileinput/fileinput.js"></script>
		
	<script language="JavaScript">
		$(document).ready(function(){ 
			$("#yygl_li").attr("class","current-page");
			$("#dxgl_li").attr("class","active");
			$("#dxgl_li ul").show();
			
		}); 
		
		   var imageStr=[];
		    $("#myfile1").fileinput({
		        language: 'zh', //设置语言
		        allowedFileExtensions: ['jpg', 'png','gif'],//接收的文件后缀
		        showCaption: false,//是否显示标题
		        maxFileCount:1,//表示允许同时上传的最大文件个数
		        uploadUrl: "${ctx}uploadImage/uploadFileDetail.html", //上传的地址
		        uploadAsync : true,//异步上传
		        enctype: 'multipart/form-data',
		        showPreview: true,//是否显示预览
		        showRemove: true,//显示移除按钮
		        showUpload: false,//是否显示上传按钮
		        showCancel: false,
		    }).on("filebatchselected", function(event, files) {
		        $("#myfile1div").find(".file-preview-frame").each(function(){
		            if($(this).attr("data-fileindex")==-1){
		                $(this).remove();
		            }
		        });
		        $(this).fileinput("upload");
		    }).on("fileuploaded", function(event, data) {
		        if(data.response){
		            if(data.response.success=="success"){
		                alert('上传成功');
		                var src=data.response.url;
		                //头像
		                if(imageStr!=null && imageStr.length>0){
		                    imageStr.splice(0,imageStr.length);
		                }
		                var initUrlName = data.response.url;
		                var str="<a href="+src+" target=\"_blank\">"+src+"</a>&nbsp;&nbsp;<a href=\"###\" onclick=\"delImage('"+src+"',1)\">删除</a>&nbsp;&nbsp;";
		                $("#imageHtml").html(str);
		                imageStr.push(initUrlName);
		                $("#imageUrl").val(src);
		            }else{
		                alert(data.response.error);
		            }

		        }
		    });
		    $('.myfile1').on('fileselect', function(event, numFiles, label) {
		        console.log("fileselect");
		    });
		    //异步上传返回结果处理
		    $('.myfile1').on('fileerror', function(event, data, msg) {
		        console.log("fileerror");
		        console.log(data);
		    });
		    //异步上传返回结果处理
		    $(".myfile1").on("fileuploaded", function(event, data, previewId, index) {
		        console.log("fileuploaded");
		        var ref = $(this).attr("data-ref");
		        $("input[name='" + ref + "']").val(data.response.url);

		    });

		    //同步上传错误处理
		    $('.myfile1').on('filebatchuploaderror', function(event, data, msg) {
		        console.log("filebatchuploaderror");
		        console.log(data);
		    });

		    //同步上传返回结果处理
		    $(".myfile1").on("filebatchuploadsuccess",
		        function(event, data, previewId, index) {
		            console.log("filebatchuploadsuccess");
		            console.log(data);
		        });

		    //上传前
		    $('.myfile1').on('filepreupload', function(event, data, previewId, index) {
		        console.log("filepreupload");
		    });

		    function jquery(){
		        console.info('init ')
		        $('.uploadSpan a').unbind('click').click(function(){
		            $(this).prev().trigger('click',function(){});
		        })

		        var imgurl="${entity.imageUrl}";
		        if(imgurl!=""){
		            imageStr.push(imgurl);
		        }


		        if(imageStr!=null && imageStr.length>0){
		            var str="";
		            for(var i=0;i<imageStr.length;i++){
		                str+="<a href=\""+imageStr[i]+"\" target=\"_blank\">"+imageStr[i]+"</a>&nbsp;&nbsp;<a href=\"###\" onclick=\"delImage('"+imageStr[i]+"',1)\">删除</a>&nbsp;&nbsp;";
		            }
		            
		            $("#imageHtml").html(str);
		        }else{
		            $("#imageHtml").html("");
		        }

		    }

		    $(function(){
		        jquery();
		    })

		
		
		
	    //文件操作工具类
	    var FileUtil={
	        //验证文件
	        validator:function(file,callback){
	            var result=true;
	            var fileName=file.name;
	            if(file==null){
	                alert('请选择正确的图片文件');
	                result=false;
	            }
	            if(!(fileName.indexOf('.jpg')!=-1||fileName.indexOf('.bmp')!=-1||fileName.indexOf('.png')!=-1)){
	                alert('请选择正确的图片文件');
	                result=false;
	            }
	            callback(result);
	        },
	        //上传文件
	        upload:function(fileDom){
	            var file=$(fileDom)[0].files[0];
	            console.info('上传文件')
	            this.validator(file,function(data){
	                if(data){
	                    isUpload=true;

	                    console.info('验证图片文件通过 上传文件');
	                    var formData = new FormData();
	                    formData.append("policy", "");
	                    formData.append("signature", "");
	                    formData.append("file",file);
	                    $.ajax({
	                        type: "POST",
	                        contentType:false,
	                        processData: false,
	                        url: "${ctx}uploadImage/upload.html",
	                        data: formData,
	                        dataType:"json",
	                        success: function (data) {
	                            console.info('文件上传信息');
	                            console.info(data);
	                            isUpload=false;
	                            if(data.success=="success"){
	                            	
	                                var src=data.fileName;
	                                if(imageStr!=null && imageStr.length>0){
	                                    imageStr.splice(0,imageStr.length);
	                                }
	                                imageStr.push(src);
	                                $("#imageHtml").html("<img src=\"/"+src+"\"   style=\"width: 80px;height: 80px;\" />&nbsp;&nbsp;<a href=\"###\" onclick=\"delImage('"+src+"')\">删除</a>");
	                               
	                               
	                                //$("#imageHtml").html("<img src=\"/"+src+"\" style=\"width: 80px;height: 80px;\" />&nbsp;&nbsp;<a href=\"###\""");
	                            }else{
	                                alert(data.dataErr);
	                            }
	                        }
	                    })
	                }
	            })
	            return false;
	        },
	        getPath:function(){},
	        setImage:function(){}
	    }

	    function delImage(id) {
	        imageStr.splice(0,imageStr.length);
	        $("#imageHtml").html("");
	        $("#imageUrl").val("");
	    }
		    
		    
		    function toVaild(){
		    	  var val = $("#imageUrl").val();
		    	  if (val=="" )
		    	  {
		    		 	 alert("请上传图片");
				    	 return false;
		    	  }
		   		  return true;
		 }
	</script>
	</body>
</html>