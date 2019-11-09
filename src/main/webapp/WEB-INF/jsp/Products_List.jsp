<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://"
                + request.getServerName() + ":" + request.getServerPort()
                + path + "/";
    %>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Widget/zTree/css/zTreeStyle/zTreeStyle.css"
          type="text/css">
    <link href="${pageContext.request.contextPath}/Widget/icheck/icheck.css" rel="stylesheet" type="text/css"/>
    <!--[if IE 7]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome-ie7.min.css"/>
    <![endif]-->
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css"/>
    <![endif]-->
    <script src="<%=basePath %>/js/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/typeahead-bs2.min.js"></script>
    <!-- page specific plugin scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/layer/layer.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/laydate/laydate.js" type="text/javascript"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/Widget/zTree/js/jquery.ztree.all-3.5.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/lrtk.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <title>产品列表</title>
</head>
<body>
<div class=" page-content clearfix">
    <div id="products_style">
        <div class="search_style">
            <div class="title_names">搜索查询</div>
                    <ul class="search_content clearfix">
                <li><label class="l_f">产品名称</label><input name="" type="text" class="text_add" placeholder="输入品牌名称"
                                                    id="goodsName"      style=" width:250px"/></li>
                <li><label class="l_f">添加时间</label><input class="inline laydate-icon" id="start" style=" margin-left:10px;">
                </li>
                <li style="width:90px;">
                    <button type="button" class="btn_search"  onclick="selLocal();"><i class="icon-search"></i>查询</button>
                </li>
            </ul>
        </div>
        <div class="border clearfix">
       <span class="l_f">
        <a href="${pageContext.request.contextPath}/picture-add.do" title="添加商品" class="btn btn-warning Order_form"><i class="icon-plus"></i>添加商品</a>
        <a href="javascript:multDel()" class="btn btn-danger"><i class="icon-trash"></i>批量删除</a>
       </span>
            <span class="r_f">共：<b id="allGoods">2334</b>件商品</span>
        </div>
        <!--产品列表展示-->
        <div class="h_products_list clearfix" id="products_list">
            <div id="scrollsidebar" class="left_Treeview">
                <div class="show_btn" id="rightArrow"><span></span></div>
                <div class="widget-box side_content">
                    <div class="side_title" ><a title="隐藏" class="close_btn"><span></span></a></div>
                    <div class="side_list">
                        <div class="widget-header header-color-green2"><h4 class="lighter smaller">产品类型列表</h4></div>
                        <div class="widget-body">
                            <div class="widget-main padding-8">
                            <div id="treeDemo" class="ztree"></div>
                            </div>
                            </div>
                    </div>
                </div>
            </div>
            <div class="table_menu_list" id="testIframe">
                <table class="table table-striped table-bordered table-hover" id="sample-table">
                    <thead>
                    <tr>
                        <th width="45px"><label><input type="checkbox" id="topCheck" class="ace"><span class="lbl"></span></label>
                        </th>
                        <th width="80px">产品编号</th>
                        <th width="250px">产品名称</th>
                        <th width="100px">商品图片</th>
                        <th width="100px">原价格</th>
                        <th width="100px">现价</th>
                        <th width="180px">加入时间</th>
                        <th width="80px">审核状态</th>
                        <th width="70px">状态</th>
                        <th width="180px">操作</th>
                    </tr>
                    </thead>
                    <tbody id="hi">
                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">45631</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">45631</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">45631</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2015-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">543346</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">987767</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">54343</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">786554</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">32122</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>

                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">767544</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>

                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">23466</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>

                    <%--<tr>--%>
                        <%--<td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>--%>
                        <%--</td>--%>
                        <%--<td width="80px">54533</td>--%>
                        <%--<td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存--%>
                            <%--64GB ROM 金色 移动联通电信4G手机Y</u></td>--%>
                        <%--<td width="100px">5467</td>--%>
                        <%--<td width="100px">4525</td>--%>
                        <%--<td width="100px">法国</td>--%>
                        <%--<td width="180px">2014-6-11 11:11:42</td>--%>
                        <%--<td class="text-l">通过</td>--%>
                        <%--<td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
                        <%--<td class="td-manage">--%>
                            <%--<a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"--%>
                               <%--class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <%--<a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"--%>
                               <%--class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>--%>
                            <%--<a title="删除" href="javascript:;" onclick="member_del(this,'1')"--%>
                               <%--class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>--%>
                        <%--</td>--%>
                    <%--</tr>--%>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!--添加用户图层-->
<div class="add_menber" id="add_menber_style" style="display: none">

    <ul class=" page-content">
        <li><label class="label_name">商品编号：</label><span
                class="add_name"><input type="hidden" id="bjImg" value=""/><input style="width: 250px" id="goodsId" name="商品id" type="text"
                                                                                     class="text_add" readonly="readonly"/></span>
            <div class="prompt r_f"></div></li>
        <li class="adderss"><label class="label_name">商&nbsp;&nbsp;品 &nbsp;名：</label><span
                class="add_name"><input value="" id="bjGoodsName" name="商品名" type="text"
                                        class="text_add" style="width: 320px"/></span>
            <div class="prompt r_f"></div></li>

        <li class="adderss"><label class="label_name">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：</label><span
                class="add_name"><input type="hidden" id="gPrice" value=""/><input style="width: 320px" id="gPriceAccount" name="价格" type="text"
                                                                                     class="text_add" /></span></label>

				<div class="prompt r_f"></div></li>
        <li><label class="label_name">折&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;扣：</label><span
                class="add_name"><input type="hidden" id="gRebate1" value=""/><input style="width: 200px" id="gRebate" name="折扣" type="text"
                                                                                   class="text_add" placeholder="输入0-1之间的数"/></span>
            <div class="prompt r_f"></div></li>
        <%--<li><label class="label_name">移动电话：</label><span--%>
                <%--class="add_name"><input id="bjYdPhone" name="移动电话" type="text"--%>
                                        <%--class="text_add" /></span>--%>
            <%--<div class="prompt r_f"></div></li>--%>
        <%--<li><label class="label_name">电子邮箱：</label><span--%>
				<%--class="add_name"><input id="bjEamil" name="电子邮箱" type="text"--%>
					<%--class="text_add" /></span><c:if test="${1==1 }"></c:if>--%>
				<%--<div class="prompt r_f"></div></li>--%>

        <li class="adderss"><label class="label_name" style="width: 160px;text-align: left;margin-left: 8px">加入时间（修改时间）：</label><span
                class="add_name"><input id="jrTime" name="加入时间" type="text"
                                        class="text_add" style="width: 250px" value=""/></span>
            <div class="prompt r_f"></div></li>
        <li><label class="label_name">状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态：</label>
            <span class="add_name"> <label><input value="0"
                                                  name="form-field-radio1" type="radio" checked="checked"
                                                  class="ace"><span class="lbl">开启</span></label>&nbsp;&nbsp;&nbsp;
					<label><input value="1" name="form-field-radio1" type="radio"
                                  class="ace"><span class="lbl">关闭</span></label>
			</span>
            <div class="prompt r_f"></div></li>
    </ul>
    <form action="${pageContext.request.contextPath}/upload.do" id="form1" onsubmit="return tjTp();" enctype="multipart/form-data" method="post">
        <div class="am-form-group" style="width: 250px;height: 200px;margin-left: 500px;margin-top: 50px;border: 1px solid #c0bfbd">
            <label class="am-form-label" style="margin-top: 10px;margin-left: 10px">选择图片：</label>
            <div class="am-form-content" style="margin-top: -6px;margin-left: 5px">
                <label class="btn btn_primary" for="xFile"
                       style="outline:none;border:0; padding:7px 10px;color:#fff;background:#38b3d4;cursor:pointer; margin:3px; border-radius:3px;">选择图片</label>
                <input type="file" name="file" id="xFile" accept="image/*" required="required"
                       onchange="changImg(event)"
                       style="position:absolute; clip:rect(0,0,0,0);"> <img
                    alt="暂无图片" id="myImg" src="" style="width: 150px;height: 110px;" onerror="onerror=null;">
                <input type="submit" style="display: none"/>
                <%--src='images/image.png'--%>
                <%--<input style="margin-top: -27px;margin-left: 175px" type="submit" value="提交" class="btn btn-primary radius"/>--%>
            </div>
        </div>
        <%--<input type="submit" value="提交"/>--%>
    </form>

</div>
<script type="text/javascript">



    function changImg(e) {
        for ( var i = 0; i < e.target.files.length; i++) {
            var file = e.target.files.item(i);
            // if (!(/^image\/.*$/i.test(file.type))) {
            //     continue; //不是图片 就跳出这一次循环
            // }
            //实例化FileReader API
            var freader = new FileReader();
            freader.readAsDataURL(file);
            freader.onload = function(e) {
                $("#myImg").attr("src", e.target.result);
            }
        }
    }
</script>
<script type="text/javascript">


    /* 查询所有的商品数*/
    function selAllGoods() {
        $.post("${pageContext.request.contextPath}/selAllGoodsCount.do",function(data){
            $("#allGoods").html("");
            $("#allGoods").html(data);
        });
    }

    // <tr>
    // <td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>
    // </td>
    // <td width="80px">23466</td>
    //     <td width="250px"><u style="cursor:pointer" class="text-primary" onclick="">小米 Max 全网通 高配版 3GB内存64GB ROM 金色 移动联通电信4G手机Y</u></td>
    // <td width="100px">5467</td>
    //     <td width="100px">4525</td>
    //     <td width="100px">法国</td>
    //     <td width="180px">2014-6-11 11:11:42</td>
    // <td class="text-l">通过</td>
    //     <td class="td-status"><span class="label label-success radius">已启用</span></td>
    // <td class="td-manage">
    //     <a onClick="member_stop(this,'10001')" href="javascript:;" title="停用"
    // class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>
    // <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"
    // class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></a>
    // <a title="删除" href="javascript:;" onclick="member_del(this,'1')"
    // class="btn btn-xs btn-warning"><i class="icon-trash  bigger-120"></i></a>
    // </td>
    // </tr>


    init();
    $.ready(function () {
        $("#topCheck").css("checked","false");
    });

    function selLocal() {

        init();
        $("#goodsName").val("");
        //$("#start").val("");
    }
    function init() {


        $("#hi").html("");
        $.ajax({
            url:'${pageContext.request.contextPath}/selAllGood.do',
            type:'post',
            data:{
                "goodsName":$("#goodsName").val(),
                "gTime":$("#start").val(),
            },
            dataType:'json',
            success:function(data){
                var obj=eval(data);
                var $str='';
                $.each(obj,function(i,x){

                    var power="";
                    var state="";
                    var btn ="";
                    var tds="";
                    if (x.gState==0) {
                        state="已启用";
                        power="通过"
                        tds="success";
                        btn="<a class='btn btn-xs' onClick='member_stop(this,"+x.goodsId+")' href='javascript:;' title='停用'>停用</a>";
                    } else if(x.gState==1){
                        state="已停用";
                        power='在审'
                        tds="defaunt";
                        btn="<a class='btn btn-xs btn-success' onClick='member_start(this,"+x.goodsId+")' href='javascript:;' title='启用'><i class=\"icon-ok bigger-120\"></i></a>";
                    }

                   // http://localhost:8080/bom/img/)(RO}BLH~JI60Z{OVFA`9_I.png
                    $str=$str+"<tr><td><label><input type='checkbox' name='Multiple_Selection' class='ace' value='"+x.goodsId+"'><span class='lbl'></span></label></td>"
                        +"<td width=\"80px\">"+x.goodsId+"</td>"
                        +"<td width=\"250px\"><u style='cursor:pointer' class='text-primary' onclick=''>"+x.gName+"</u></td>"
                        +"<td width=\"100px\"><img src='"+x.gImg+"' width='90px' height='60px'></td>"
                        +"<td width=\"100px\">"+x.gPrice+"</td>"
                        +"<td width=\"100px\">"+(x.gPrice*x.gRebate)+"</td>"
                        +"<td width=\"180px\">"+x.gTime+"</td>"
                        +"<td class=\"text-l\">"+power+"</td>"
                        +"<td class='td-status'><span class='label label-"+tds+" radius'>"+state+"</span></td>"
                        +"<td class='td-manage'>"+btn+" " +
                        "<a title='编辑' onclick="+"member_edit("+x.goodsId+",'member-add.html','4','','510')"+" href='javascript:;' class='btn btn-xs btn-info'><i class=\"icon-edit bigger-120\"></i></a> " +
                        "<a title='删除' href='javascript:;' onclick="+"member_del(this,"+x.goodsId+")"+" class=\"btn btn-xs btn-warning\"><i class=\"icon-trash  bigger-120\"></i></a></td>"
                        +"</tr>";


                });
                $("#sample-table tbody").html($str);
                selAllGoods();
            },
            error:function(){
                layer.alert("错误操作!",{icon:2});
            }

        });

    }


    //时间设置
    function currentTime() {
        var d = new Date(), str = '';
        str += d.getFullYear() + '-';
        str += d.getMonth() + 1 + '-';
        str += d.getDate() + '';
        // str += d.getHours() + ':';
        // str += d.getMinutes() + ':';
        // str += d.getSeconds() + '';
        return str;
    }



     jQuery(function ($) {

        // var oTable1 = $('#sample-table').dataTable({
        //
        //     lengthMenu: [10, 20, 30, 40],//定义在每页显示记录数的select中显示的选项。
        //     "aaSorting": [[1, "desc"]],//默认第几个排序
        //     "bStateSave": true,//状态保存
        //     "aoColumnDefs": [
        //         //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
        //         {"orderable": false, "aTargets": [0,1,2,3,4,5,6,7,8,9]}// 制定列不参与排序
        //     ]
        // });


        $('table th input:checkbox').on('click', function () {
            var that = this;
            $(this).closest('table').find('tr > td:first-child input:checkbox')
                .each(function () {
                    this.checked = that.checked;
                    $(this).closest('tr').toggleClass('selected');
                });

        });


        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }
    });
    laydate({
        elem: '#start',
        event: 'focus'
    });
    $(function () {
        $("#products_style").fix({
            float: 'left',
            //minStatue : true,
            skin: 'green',
            durationTime: false,
            spacingw: 30,//设置隐藏时的距离
            spacingh: 260,//设置显示时间距
        });
    });
</script>
<script type="text/javascript">
    //初始化宽度、高度
    $(".widget-box").height($(window).height() - 215);
    $(".table_menu_list").width($(window).width() - 260);
    $(".table_menu_list").height($(window).height() - 215);
    //当文档窗口发生改变时 触发
    $(window).resize(function () {
        $(".widget-box").height($(window).height() - 215);
        $(".table_menu_list").width($(window).width() - 260);
        $(".table_menu_list").height($(window).height() - 215);
    })

    /*******树状图*******/
    var setting = {
        view: {
            dblClickExpand: false,
            showLine: false,
            selectedMulti: false
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "pId",
                rootPId: ""
            }
        },
        callback: {
            beforeClick: function (treeId, treeNode) {
                var zTree = $.fn.zTree.getZTreeObj("tree");
                if (treeNode.isParent) {
                    zTree.expandNode(treeNode);
                    return false;
                } else {
                    demoIframe.attr("src", treeNode.file + ".html");
                    return true;
                }
            }
        }
    };

    var zNodes = [
        {id: 1, pId: 0, name: "商城分类列表", open: true},
        {id: 11, pId: 1, name: "宝宝洗护"},
        {id: 12, pId: 1, name: "宝宝玩具"},
        {id: 13, pId: 1, name: "童床"},
        {id: 14, pId: 1, name: "尿裤湿巾"},
        {id: 15, pId: 1, name: "奶粉"},
    ];

    var code;

    function showCode(str) {
        if (!code) code = $("#code");
        code.empty();
        code.append("<li>" + str + "</li>");
    }

    $(document).ready(function () {
        var t = $("#treeDemo");
        t = $.fn.zTree.init(t, setting, zNodes);
        var demoIframe = $("#testIframe");
        demoIframe.bind("load", loadReady);
        var zTree = $.fn.zTree.getZTreeObj("tree");
        zTree.selectNode(zTree.getNodeByParam("id", '11'));
    });

    /*产品-停用*/
    function member_stop(obj, id) {

        layer.confirm('确认要停用吗？', function (obj) {
            // $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
            // $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
            // $(obj).remove();
            // layer.msg('已停用!', {icon: 5, time: 1000});
            $.post("${pageContext.request.contextPath}/upGoodsStop.do",{goodsIds:id},function(data){
                if (data==1) {
                    layer.msg('已停用!',{icon: 5,time:1000});
                } else if(data==0) {
                    layer.msg('停用失败!',{icon: 0,time:1000});
                }
                init();
            });
        });
    }

    /*产品-启用*/
    function member_start(obj, id) {
        // layer.confirm('确认要启用吗？', function (index) {
        //     $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
        //     $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
        //     $(obj).remove();
        //     layer.msg('已启用!', {icon: 6, time: 1000});
        // });
        layer.confirm('确认要启用吗？', function (index) {
            $.post("${pageContext.request.contextPath}/upGoodsStart.do",{goodsId:id},function(data){
                if (data==1) {
                    layer.msg('已启用!',{icon: 6,time:1000});
                } else if(data==0) {
                    layer.msg('启用失败!',{icon: 0,time:1000});
                }
                init();
            });
        });

    }

    /*产品-编辑*/
    /*用户-编辑*/
    function member_edit(id){
        $("#jrTime").val(currentTime());
        var goodsId = id;
        $.post("${pageContext.request.contextPath}/selGoodsById.do",{goodsId:id},function(data){
            //alert(data);
            //var json = (new Function("return " + data))();
            //alert(data.goodsId);

            $("#goodsId").val(data.goodsId);
            $("#bjGoodsName").val(data.gName);
            $("#gPriceAccount").val(data.gPrice);
            $("#gRebate").val(data.gRebate);

            if (data.gImg!=null&&data.gImg!=''){
                $("#myImg").attr("src",data.gImg);
            }else{
                $("#myImg").attr("src","images/image.png");
            }


            //$("#myImg").attr("src","<c:if test="${gimg==null}">images/image.png</c:if><c:if test="${gimg!=null}">${gimg}</c:if>");

            //var sex = $("input[name='form-field-radio2']");
            var state = $("input[name='form-field-radio1']");

            // $.each(sex,function(i,x){
            //
            //     sex.get(i).checked=false;
            //
            //     if (json.userSex==1) {
            //         sex.get(0).checked=true;
            //     }else if (json.userSex==0) {
            //         sex.get(1).checked=true;
            //     }else {
            //         sex.get(2).checked=true;
            //     }
            //
            // });

            $.each(state,function(i,x){

                state.get(i).checked=false;

                if (data.gState==0) {
                    state.get(0).checked=true;
                }else if (data.gState==1) {
                    state.get(1).checked=true;
                }

            });


        });


        layer.open({
            type: 1,
            title: '修改用户信息',
            maxmin: true,
            shadeClose:false, //点击遮罩关闭层
            area : ['800px' , ''],
            content:$('#add_menber_style'),
            btn:['提交','取消'],
            yes:function(index,layero){
                var num=0;
                var str="";
                $(".add_menber input[type$='text']").each(function(n){
                    if($(this).val()=="")
                    {

                        layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                            title: '提示框',
                            icon:0,
                        });
                        num++;
                        return false;
                    }
                });
                if(num>0){  return false;}
                else{
                    //都填好了点击确定进入修改信息环节

                    // //获取性别 1.男  0.女  2.保密
                    // var userSex = "";
                    // var obj=$("input[name='form-field-radio2']");
                    // obj.each(function(i,x) {
                    //     if (x.checked) {
                    //         userSex=x.value;
                    //     }
                    // });


                    //获取商品状态 0.正常  1.封禁
                    var gState="";
                    var obj1=$("input[name='form-field-radio1']");
                    obj1.each(function(i,x) {
                        if (x.checked) {
                            gState=x.value;
                        }
                    });

                    var gImg2="";
                    gImg2=$("#myImg")[0].src;

                    function tjTp(){
                        alert("触发了提交事件")
                        //$("#form1").submit();
                        return true;

                    }
                    var formData = new FormData();
                    var file = $("#xFile")[0].files[0];
                    formData.append("file", file);
                    $.ajax({
                        url:"${pageContext.request.contextPath}/upload.do",
                        type:"post",
                        data:formData,
                        processData: false,
                        contentType: false,
                        success:function (data) {
                            updata();
                        }
                    })

                function updata(){
                    $.ajax({
                        url:"${pageContext.request.contextPath}/upByIdGoods.do",
                        type:"post",
                        data:{
                            goodsId:$("#goodsId").val(),
                            gName:$("#bjGoodsName").val(),
                            gPrice:$("#gPriceAccount").val(),
                            gRebate:$("#gRebate").val(),
                            gState:gState,
                            gTime:$("#jrTime").val(),
                        },
                        dataType:"json",
                        beforeSend:function(){

                        },
                        success:function (data) {
                            if (data==1) {
                                layer.alert('修改成功！',{
                                    title: '提示框',
                                    icon:1,
                                });
                            } else if(data==0) {
                                layer.alert('编辑失败！',{
                                    title: '提示框',
                                    icon:0,
                                });
                            }
                            init();
                        },
                        error:function () {
                            layer.alert('错误！',{
                                title: '提示框',
                                icon:0,
                            });
                        }

                    });
                }

                    // $.post("../upByIdUser.do",{
                    //
                    //     userId:$("#bjUserId").val(),
                    //     userName:$("#bjUserName").val(),
                    //     userPhone:$("#bjGdPhone").val(),
                    //     userSex:userSex,
                    //     userState:userState,
                    //
                    //
                    // },function(data){
                    //
                    //     if (data==1) {
                    //         layer.alert('修改成功！',{
                    //             title: '提示框',
                    //             icon:1,
                    //         });
                    //     } else if(data==2) {
                    //         layer.alert('编辑失败！',{
                    //             title: '提示框',
                    //             icon:0,
                    //         });
                    //     }
                    //
                    //
                    // });

                    /* layer.alert('添加成功！',{
                      title: '提示框',
                      icon:1,
                     }); */

                    layer.close(index);
                    init();
                }

            }
        });
    }


    /*产品-删除*/
    function member_del(obj, id) {
        // layer.confirm('确认要删除吗？', function (index) {
        //     $(obj).parents("tr").remove();
        //     layer.msg('已删除!', {icon: 1, time: 1000});
        // });
        layer.confirm('确认要删除吗？',function(index){
            //$(obj).parents("tr").remove();

            $.post("${pageContext.request.contextPath}/upGoodsState.do",{goodsId:id},function(data){
                if (data==1) {
                    layer.msg('已删除!',{icon:1,time:1000});
                } else if(data==0) {
                    layer.msg('删除失败!',{icon:0,time:1000});
                }
                init();
            });

            //layer.msg('已删除!',{icon:1,time:1000});
        });
    }

    function multDel() {

        layer.confirm('确认要删除这些商品吗？',function(index){

            var MDuserState="";
            //var checks = $("input[name='MultipleSelection']");
            var mdobj=$("input[name='Multiple_Selection']");
            mdobj.each(function(i,x) {
                if (x.checked) {
                    //alert(x.value);
                    MDuserState+=x.value+",";
                }
            });
            // alert(MDuserState);

            $.post("${pageContext.request.contextPath}/upGoodsMaryDel.do",{goodsIds:MDuserState},function(data){

                if (data==1) {
                    layer.msg('已删除!',{icon:6,time:1000});
                } else if(data==2) {
                    layer.msg('删除失败!',{icon:5,time:1000});
                }else if(data==3){
                    layer.msg('部分删除失败!',{icon:0,time:1000});
                }

                init();
            });

        });

    }

    //面包屑返回值
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.iframeAuto(index);
    $('.Order_form').on('click', function () {
        var cname = $(this).attr("title");
        var chref = $(this).attr("href");
        var cnames = parent.$('.Current_page').html();
        var herf = parent.$("#iframe").attr("src");
        parent.$('#parentIframe').html(cname);
        parent.$('#iframe').attr("src", chref).ready();
        ;
        parent.$('#parentIframe').css("display", "inline-block");
        parent.$('.Current_page').attr({"name": herf, "href": "javascript:void(0)"}).css({
            "color": "#4c8fbd",
            "cursor": "pointer"
        });
        //parent.$('.Current_page').html("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
        parent.layer.close(index);

    });
</script>
</body>
</html>

