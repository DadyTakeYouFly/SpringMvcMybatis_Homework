<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%@ include file="header.jsp" %>
<script type="text/javascript" src="layui/js/xcity.js"></script>
  <body>
     <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="index.jsp">PSS后台管理系统</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>
        <ul class="layui-nav left fast-add" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">+新增</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('资讯','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>
              <dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
               <dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>
            </dl>
          </li>
        </ul>
        <ul class="layui-nav right" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">admin</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a></dd>
              <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
              <dd><a href="./login.html">退出</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item to-index"><a href="/">前台首页</a></li>
        </ul>
        
    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
     <!-- 左侧菜单开始 -->
    <div class="left-nav">
      <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>基本资料</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                
                <ul class="sub-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="layui-icon">&#xe770;</i>   
                            <cite>销售员管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                        	 <li>
                                <a _href="/product/list">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>员工信息一览</cite> 
                                </a>
                            </li >
                            <li>
                                <a _href="/product/add">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>增加人员</cite>
                                    
                                </a>
                            </li >
                            <li>
                                <a _href="saler_search.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>查询人员</cite>
                                    
                                </a>
                            </li>
                        </ul>
                    </li>
                    
	                 <li>
                        <a href="javascript:;">
                        	<i class="layui-icon">&#xe698;</i>  
                            <cite>产品管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a _href="produce_table.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>商品列表一览</cite>
                                </a>
                            </li >
                            <li>
                                <a _href="produce_insert.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>增加商品</cite>
                                    
                                </a>
                            </li>
                            <li>
                                <a _href="produce_search.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>查询商品</cite>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                        	<i class="layui-icon">&#xe612;</i>  
                            <cite>客户管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a _href="guest_table.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>客户数据列表</cite>
                                </a>
                            </li >
                            <li>
                                <a _href="guest_insert.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>新增客户</cite>
                                    
                                </a>
                            </li>
                            <li>
                                <a _href="guest_search.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>查询客户</cite>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="layui-icon">&#xe657;</i> 
                    <cite>采购管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="shopping_table.jsp">
                          <i class="layui-icon">&#xe63c;</i>
                            <cite>采购入库</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a _href="shopping_table.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>采购商品明细</cite>
                                </a>
                            </li >
                            <li>
                                <a _href="shopping_insert.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>采购内容添加</cite>
                                    
                                </a>
                            </li>
                            <li>
                                <a _href="shopping_search.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>采购商品查询</cite>
                                </a>
                            </li>
                        </ul>
                    </li >
                    <li>
                        <a _href="javascript:;">
                            <i class="layui-icon">&#xe621;</i>
                            <cite>退货处理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a _href="backsale_table.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>退货受理明细</cite>
                                </a>
                            </li >
                            <li>
                                <a _href="backsale_insert.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>申请退货</cite>
                                    
                                </a>
                            </li>
                            <li>
                                <a _href="backsale_search.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>退货进度查询</cite>
                                </a>
                            </li>
                        </ul>
                    </li >
                </ul>
            </li>
            <li>
                <a _href="javascript:;">
                <i class="layui-icon">&#xe857;</i>
                <cite>库存管理</cite>
                <i class="iconfont nav_right">&#xe697;</i>
               </a>
               <ul class="sub-menu">
                  <li>
                                <a _href="inventory_table.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>库存商品列表</cite>
                                </a>
                            </li >
                            <li>
                                <a _href="inventory_insert.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>添加库存商品</cite>
                                    
                                </a>
                            </li>
                            <li>
                                <a _href="inventory_search.jsp">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>库存商品查询</cite>
                                </a>
                            </li>
                        </ul>
                    </li >
             <li>
             <a href="javascript:;">
                    <i class="layui-icon">&#xe631;</i>
                    <cite>系统维护</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="Unknow.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>用户资料维护</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="Unknow.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>用户权限管理</cite>
                        </a>
                    </li>
                </ul>
            </li>
             <li>
             <a href="javascript:;">
                    <i class="layui-icon">&#xe62d;</i>
                    <cite>报表导出</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="Unknow.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>导出库存预警</cite>
                            
                        </a>
                    </li >
                    <li>
                        <a _href="Unknow.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>导出商品资料</cite>
                            
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
      </div>
    </div>
    <!-- <div class="x-slide_left"></div> -->
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
          <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
          </ul>
          <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='welcome.html' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
          </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    
    <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright"> ©奥海 系统模板</div>  
    </div>
    <!-- 底部结束 -->
	<%@ include file="footer.jsp" %>
	
  </body>
</html>
