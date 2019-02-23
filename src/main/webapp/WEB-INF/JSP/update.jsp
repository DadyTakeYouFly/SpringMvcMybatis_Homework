<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>商品修改导航</title>
    <%@ include file="header.jsp" %>
    <%@ include file="footer.jsp"%>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/supersized.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="layui/lib/css/layui.css">
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>

<script type="text/javascript">
    function update(){
        $.ajax({
            type:'POST',
            data:$("#update_form").serialize(),
            url:'update_pro',
            success:function(data){
                var obj = eval('(' + data + ')');
                if(obj.code==200){
                    layer.msg("修改成功，返回页面");
                    //setTimeout("close('data')", 3000);
                    window.parent.location.reload();//刷新父页面
                }else{
                    layer.msg("修改失败，请重试");
                }
            }
        });
        return false;
    }
</script>

<body style="background-color:LavenderBlush">
<form id="update_form">
    <div style="width:100%;height:5%">
        <h1 style="color:black;margin-left:60px;margin-top:40px;">员&nbsp;工&nbsp;信&nbsp;息&nbsp;修&nbsp;改</h1>
    </div>
    <div style="width:100%;height:95%">
        <table style="margin-left:600px;color:black;font-size:20px;font-family:Microsoft YaHei;width:500px;height:500px;margin-top:50px;text-align: center;border:3px solid grey;">
            <tr>
                <td>编号：</td>
                <td><input type="text" name="sid" style="color: black;font-family:Microsoft YaHei;" readonly=readonly value="${pro.sid}"></td>
            </tr>
            <tr>
                <td>商品名称：</td>
                <td><input type="text" name="sname" style="color: black;font-family:Microsoft YaHei;" value="${pro.sname}"></td>
            </tr>
            <tr>
                <td>库存数量：</td>
                <td><input type="text" name="amount" style="color: black;font-family:Microsoft YaHei;" value="${pro.amount}"></td>
            </tr>
            <tr>
                <td>进货价格：</td>
                <td><input type="text" name="inprice" style="color: black;font-family:Microsoft YaHei;" value="${pro.inprice}"></td>
            </tr>
            <tr>
                <td>销售价格：</td>
                <td><input type="text" name="outprice" style="color: black;font-family:Microsoft YaHei;" value="${pro.outprice}"></td>
            </tr>
            <tr>
                <td>最后出货时间：</td>
                <td><input type="text" name="larestock" style="color: black;font-family:Microsoft YaHei;" value="${pro.larestock}"></td>
            </tr>
            <tr>
                <td>最近进货时间：</td>
                <td><input type="text" name="recsale" style="color: black;font-family:Microsoft YaHei;" value="${pro.recsale}"></td>
            </tr>
            <tr>
                <td>商品负责人：</td>
                <td><input type="text" name="fzname" style="color: black;font-family:Microsoft YaHei;" value="${pro.fzname}"></td>
            </tr>
            <tr>
                <td>销售员：</td>
                <td><input type="text" name="saler" style="color: black;font-family:Microsoft YaHei;" value="${pro.saler}"></td>
            </tr>
            <tr>
                <td colspan="2"><button type="button" id="update_btn" onclick="update()" style="color:black;height:50px;width:100px;font-size:20px">提交新增</button>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
