<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <%@ include file="header.jsp"%>
    <%@ include file="footer.jsp"%>
    <title>新增商品内容</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="layui/lib/layui/css/layui.css">
    <script src="layui/lib/layui/layui.js"></script>
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>

<body style="background-color:LavenderBlush">
<form id="form-data">
    <div style="width:100%;height:5%">
        <h1 style="color:black;margin-left:180px;margin-top:40px;">新&nbsp;增&nbsp;商&nbsp;品&nbsp;信&nbsp;息</h1>
    </div>
    <div style="width:100%;height:95%">
        <table style="margin-left:50px;color:black;font-size:20px;font-family:Microsoft YaHei;width:500px;height:500px;margin-top:50px;text-align: center;border:3px solid grey;">
            <!-- <tr>
                <td>编号：</td>
                <td><input type="text" name="sid" style="color: black;font-family:Microsoft YaHei;"></td>
            </tr> -->
            <tr>
                <td>商品名称：</td>
                <td><input type="text" id="sname" name="sname" style="color: black;font-family:Microsoft YaHei;"></td>
            </tr>
            <tr>
                <td>库存数量：</td>
                <td><input type="text" id="amount" name="amount" style="color: black;font-family:Microsoft YaHei;"></td>
            </tr>
            <tr>
                <td>进货价格：</td>
                <td><input type="text" id="inprice" name="inprice" style="color: black;font-family:Microsoft YaHei;"></td>
            </tr>
            <tr>
                <td>销售价格：</td>
                <td><input type="text" id="outprice" name="outprice" style="color: black;font-family:Microsoft YaHei;"></td>
            </tr>
            <tr>
                <td>最后进货时间：</td>
                <td><input type="text" id="larestock" name="larestock" style="color: black;font-family:Microsoft YaHei;"></td>
            </tr>
            <tr>
                <td>最近出货时间：</td>
                <td><input type="text" id="recsale" name="recsale" style="color: black;font-family:Microsoft YaHei;"></td>
            </tr>
            <tr>
                <td>商品负责人：</td>
                <td><input type="text" id="fzname" name="fzname" style="color: black;font-family:Microsoft YaHei;"></td>
            </tr>
            <tr>
                <td>销售员：</td>
                <td><input type="text" id="saler"name="saler" style="color: black;font-family:Microsoft YaHei;"></td>
            </tr>
            <tr>
                <td colspan="2"><button type="button"  style="color:black;height:50px;width:100px;font-size:20px" onclick="sb()">提交新增</button>
            </tr>
        </table>
    </div>
</form>
</body>
<script type="text/javascript">
    function sb(){
        $.ajax({
            data:{
                sname:$('#sname').val(),
                amount:$('#amount').val(),
                inprice:$('#inprice').val(),
                outprice:$('#outprice').val(),
                larestock:$('#larestock').val(),
                recsale:$('#recsale').val(),
                fzname:$('#fzname').val(),
                saler:$('#saler').val()
            },
            type:"post",
            dataType:"JSON",
            url:"insert_pro",
            success:function(data){
                if(data.code==200){
                    alert("添加成功，点击返回");
                    window.location.href="produce_table.jsp";
                }else{
                    alert("添加失败，请重试");
                    window.location.href="produce_table.jsp";
                }
            }
        });
    }
</script>
</html>
