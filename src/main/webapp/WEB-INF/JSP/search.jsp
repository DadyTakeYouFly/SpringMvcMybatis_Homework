<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <%@ include file="header.jsp" %>
    <%@ include file="footer.jsp"%>
    <title>商品搜寻导航</title>
    <link rel="stylesheet" href="layui/lib/layui/css/layui.css">
    <script src="layui/lib/layui/layui.js"></script>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>

<body>
<div class="demoTable">
    &nbsp;&nbsp;
    <xblock>
        <div class="layui-inline">
            <!-- <input class="layui-input" name="id" id="demoReload" autocomplete="off"> -->
            <input type="text" name="username" id="demoReload"  placeholder="请输入姓名" autocomplete="off" class="layui-input" style="width: 300px;display: inline;">
        </div>
        <!-- 搜索按钮 防止button的自动提交 -->
        <div class="layui-btn" data-type="reload" id="reloadbtn"><i class="layui-icon">&#xe615;</i></div>
        <a class="layui-btn layui-btn-small" style="line-height:5px;margin-right:60%;float:right" href="javascript:location.replace(location.href);" title="刷新">
            <i class="layui-icon" style="line-height:36px">&#xe666;</i></a>
    </xblock>
</div>
<!-- 没写tr td 只有一个table -->
<table id="demo" lay-filter="test"></table>


<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
    /* 加载组件 */
    layui.use('table', function() {
        var table = layui.table;
        var $ = layui.jquery;
        var layer=layui.layer;

        table.render({
            elem : '#demo',//这个数据表单绑定的table是哪个
            height : 500,
            width:1150,
            url : 'list_pro', //数据接口
            page : false, //开启分页

            cols : [ [ //表头
                {
                    field : 'sid',//字段
                    title : '编号',//标题
                    //width : 80,//如果有写宽度就会按照宽度来进行显示
                    sort : true, //排序
                    fixed : 'left'
                }
                , {
                    field : 'sname',
                    title : '商品名称'
                    //width : 80
                }
                , {
                    field : 'amount',
                    title : '库存数量'
                    //width : 80,
                    //sort : true
                }
                , {
                    field : 'inprice',
                    title : '进货价格'
                    //width : 80
                }
                , {
                    field : 'outprice',
                    title : '销售价格'
                    //width : 177
                }
                , {
                    field : 'larestock',
                    title : '最后进货时间'
                    //width : 80,
                    //sort : true
                }
                , {
                    field : 'recsale',
                    title : '最近出货时间'
                    //width : 80,
                    //sort : true
                }
                , {
                    field : 'fzname',
                    title : '商品负责人'
                    //width : 80,
                    //sort : true
                }
                , {
                    field : 'saler',
                    title : '销售员'
                    //width : 80,
                    //sort : true
                }
                , {
                    fixed : 'right',
                    title : '操作',
                    toolbar : '#barDemo',
                    width : 150
                }//绑定工具条
            ] ],
            id: 'testReload'//配置动态表格id以便于执行重载操作
        });

        /* -----------------------------------active方法和监听工具条----------------------------------- */
        //定义一个对象中包含了重载和模糊搜索的方法
        active = {
            //当重载动作被激活的时候要执行的方法
            reload : function() {
                var demoReload = $('#demoReload');
                //执行重载   testReload是要重载的table的id
                table.reload('testReload', {
                    //where负责带过去额外的参数
                    where : {
                        //以键值对的方法传额外参数
                        sname :''+demoReload.val()
                    }
                });
            },
        };

        //监听搜索按钮 获取搜索按钮中的类型来执行active中的方法
        $('#reloadbtn').on('click', function() {
            //获取到reloadbtn这个元素的data-type的值
            var type = $(this).data('type');
            //判断active中是否有type这个值的方法
            active[type] ? active[type].call(this) : '';
        });

        //监听工具条
        table.on('tool(test)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象

            //通过layEvent去判断是什么事件：编辑、删除、查看
            if (layEvent === 'detail') { //查看
                //do somehing
            }
            else if (layEvent === 'del') { //删除
                //如果是删除事件则弹出提示框  如果点确定则向后台发送ajax请求
                layer.confirm('真的删除行么', function(index) {
                    ////向服务端发送删除指令   发送ajax请求
                    $.ajax({
                        type:'GET',
                        url: 'delete_back?sid='+obj.data.sid,//携带要删除的主键
                        dataType: 'JSON',//设定返回值类型为JSON
                        success: function(data) {//如果成功对返回的数据的code状态码进行判断
                            if (data.code == 200) {
                                layer.open({//利用layer的弹窗层告诉用户删除情况
                                    title : '结果',
                                    content : '删除成功'
                                });
                                //因为成功所以调用obj.del()方法删除表格的缓存数据
                                obj.del();//删除对应行（tr）的DOM结构，并更新缓存
                            }
                            if(data.code == 500){
                                layer.open({
                                    title : '结果',
                                    content : '删除失败'
                                });
                            }
                        }
                    });
                    layer.close(index);
                });
            }
            else if (layEvent === 'edit') { //编辑
                //do something
                x_admin_show('修改商品信息','findbyid_back?sid='+obj.data.sid);
            }
        });
    });
</script>
</body>
</html>
