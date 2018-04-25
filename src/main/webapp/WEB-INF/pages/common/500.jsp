<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="./header.jsp" %>
    <!-- Bootstrap -->
    <!-- NProgress -->
    <link href="${ctx}/css/nprogress.css" rel="stylesheet">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${ctx}/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${ctx}/css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${ctx}/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <!-- page content -->
        <div class="col-md-12">
            <div class="col-middle">
                <div class="text-center">
                    <h1 class="error-number">500</h1>
                    <h2>服务出现异常</h2>
                    <p>服务出现异常，无法自动恢复，请与管理员联系并将以下异常信息发送给管理员！</p>
                    <div class="mid_center">
                        <%=exception%>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->
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
<!-- validator -->
<script src="${ctx}/js/validator.js"></script>

<!-- Custom Theme Scripts -->
<script src="${ctx}/js/custom.min.js"></script>
</body>
</html>
