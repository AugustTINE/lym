<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>--%>
<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="${ctx}index" class="site_title"><span>通用配置管理平台</span></a>
        </div>
        <div class="clearfix"></div>
        <br />
        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>菜单</h3>
                <ul class="nav side-menu">
                    <li class="${menu eq 'card'?'active':''}"><a><i class="fa fa-home"></i>活动管理配置<span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu" style="${menu eq 'card'?'display: block;':''}">
                            <li>
                                <a href="${ctx}couponConfig/index">
                                    <i class="fa fa fa-server"></i>
                                    <span class="nav-label">活动管理</span>
                                    <span class="fa arrow"></span>
                                </a>
                            </li>
                            <li><a href="${ctx}contractManager/index">合同数据</a></li>
                            <li><a href="${ctx}deviceInfo/index">设备数据</a></li>
                        </ul>
                    </li>


                </ul>
            </div>
        </div>
        <!-- /sidebar menu -->
    </div>
</div>