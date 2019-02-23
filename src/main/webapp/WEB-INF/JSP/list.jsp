<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%@ include file="header.jsp" %>
<%@ include file="footer.jsp"%>
<head>

    <title>商品信息一览</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link rel="stylesheet" href="layui/css/layui.css">
    <script src="layui/layui.js"></script>
</head>

<body>
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
            ] ]
        });
        /* -----------------------------------active方法和监听工具条----------------------------------- */
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
                        url: 'delete_pro?sid='+obj.data.sid,//携带要删除的主键
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
                x_admin_show('修改员工信息','findbyid_pro?sid='+obj.data.sid);
            }
        });
    });
</script>
</body>
</html>
