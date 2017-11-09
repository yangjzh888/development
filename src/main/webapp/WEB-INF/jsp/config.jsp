<%--
  Created by IntelliJ IDEA.
  User: Zyq
  Date: 2017/11/9
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>配置故障现象</title>
</head>
<body>
<%@ include file="common/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-0"></div>
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">查询条件</div>
                        <div class="panel-body">
                            <form id="formSearch" class="form-horizontal">
                                <div class="form-group" style="margin-top:15px">
                                    <label class="control-label col-sm-1" for="search_problem_id">故障现象编号</label>
                                    <div class="col-sm-2">
                                        <input type="text" class="form-control" id="search_problem_id"
                                               name="problem_id">
                                    </div>
                                    <label class="control-label col-sm-1" for="search_problem">故障现象</label>
                                    <div class="col-sm-2">
                                        <input type="text" class="form-control" id="search_problem" name="problem"
                                               placeholder="支持模糊查询">
                                    </div>
                                    <div class="col-sm-4" style="text-align:left;">
                                        <button type="button" style="margin-left:50px" id="btn_query"
                                                class="btn btn-primary">查询
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <form action="<%=ctx%>/report" method="post">
                        <div id="toolbar" class="btn-group">
                            <button id="btn_refresh" type="button" class="btn btn-default">
                                <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>&nbsp;&nbsp;刷新
                            </button>
                        </div>
                        <table id="problem_config" class="table table-hover table-bordered"></table>
                    </form>
                    <a href="<%=ctx%>/searchTable?problem_id=&problem='2323' ">测试后台</a>
                    <c:if test="${msg != null}">
                        <p id="msg" style="display: none">${msg}</p>
                    </c:if>
                </div>
                <div class="col-md-0"></div>
            </div>
        </div>
    </div>
</div>
<script src="<%=ctx%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=ctx%>/js/bootstrap.min.js"></script>
<script src="<%=ctx%>/js/bootstrap-table.js"></script>
<script type="text/javascript">
    $(function () {
        initTable();
    });
    function initTable() {
        var url = "<%=ctx%>/configTable";
        $("#problem_config").bootstrapTable("destroy");
        $("#problem_config").bootstrapTable({
            url: url,
            method: "get",
            dataType: "json",
            toolbar: "#toolbar",
            cache: false,//是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            striped: true,//是否显示行间隔色
            queryParams: queryParams,//传递参数（*）查询方法名
            sidePagination: "server",//分页类型 server后端分页 client客户端分页（*）
//            responseHandler: responseHandler,如果后台直接传回｛total： ，rows：[]｝形式则不需要此方法
            pagination: true,//是否显示分页（*）
            pageNumber: 1,//初始化加载第一页，默认第一页
            pageSize: 10,//每页的记录行数（*）
            pageList: [10, 25, 50, 100],//可供选择的每页的行数（*）
            height: 500,
            width: $(window).width(),
            showColumns: false,//是否自定义显示列
            showRefresh: false,//是否显示刷新按钮
            minimumCountColumns: 2,//最少允许的列数
            //表前复选框
            clickToSelect: true,//是否启用点击选中行
            idField: "problem_id",//重要---可设置checkbox的值为指定字段
            selectItemName: "key_id",    //设置checkbox name属性，可用于遍历获取选中值
            uniqueId: "no",//每一行的唯一标识，一般为主键列
            showToggle: true,//是否显示详细视图和列表视图的切换按钮
            cardView: false,//是否显示详细视图
            detailView: false,//是否显示父子表
            columns: [
                {
                    checkbox: true
                },
                {
                    field: "problem_id",
                    title: "故障现象编号(0表示未配置)",
                    width: 10,
                    align: 'center',
                    valign: 'middle'
                },
                {
                    field: "problem",
                    title: "故障现象名称",
                    halign:"center"
                },
                {
                    field:"content_key",
                    title:"申告内容关键字",
                    halign:"center",
                },
                {
                    field:"content_priority",
                    title:"申告内容优先级",
                    align:"center",
                    halign:"center",
                },
                {
                    field:"operation",
                    title:"操作",
                    align:"center",
                    halign:"center",
                    formatter:function (index, row) {
                        return '<input type="text" value=" '+row['problem']+' "/input>';
                    }
                }
            ]
        });
    }
    $("#btn_refresh").click(function () {
        initTable();
    });
    function queryParams(params) {//查询参数传递
        var param = {
            pageNum: this.pageNumber,
            pageSize: this.pageSize,
            limit: this.limit, // 页面大小
            offset: this.offset // 页码
        };
        return param;
    }
</script>
</body>
</html>