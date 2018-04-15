<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>--%>
<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="${ctx}index.html" class="site_title"><span>通用配置管理平台</span></a>
        </div>
        <div class="clearfix"></div>
        <br />
        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>菜单</h3>
                <ul class="nav side-menu">
                    <li class="${menu eq 'system'?'active':''}"><a><i class="fa fa-home"></i>通用配置<span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu" style="${menu eq 'system'?'display: block;':''}">
                            <li class="${submenu eq 'user'?'current-page':''}"><a href="${ctx}commonConfig/index.html">位置配置</a></li>
                            <li class="${submenu eq 'welcab_appointment'?'current-page':''}"><a href="${ctx}vehicle/index.html">车载服务类型管理</a></li>
                            <li class="${submenu eq 'welcab_appointment'?'current-page':''}"><a href="${ctx}vehicleCity/index.html">车载服务分城市管理</a></li>
                            <li class="${submenu eq 'guess_go_where'?'current-page':''}"><a href="${ctx}config/form/guess_go_where/edit.html">猜你去哪开关</a></li>
                            <li class="${submenu eq 'home_page_ad_config'?'current-page':''}"><a href="${ctx}config/form/home_page_ad_config/edit.html">首页轮播图弹出频次</a></li>
                        </ul>
                    </li>

                    <li class="${menu eq 'card'?'active':''}"><a><i class="fa fa-home"></i>活动管理配置<span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu" style="${menu eq 'card'?'display: block;':''}">
                            <li class="${submenu eq 'welcab_appointment'?'current-page':''}"><a href="${ctx}activity/index.html">优惠券配置模板</a></li>
                            <li class="${submenu eq 'welcab_appointment'?'current-page':''}"><a href="${ctx}activity/index.html">专车司机拉乘客</a></li>
                        </ul>
                    </li>


                </ul>
            </div>
        </div>
        <!-- /sidebar menu -->
    </div>
</div>