<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
        <link href="${pageContext.request.contextPath}/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/font/css/font-awesome.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/typeahead-bs2.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/assets/layer/layer.js" type="text/javascript" ></script>
        <script src="${pageContext.request.contextPath}/assets/laydate/laydate.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.easy-pie-chart.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/lrtk.js" type="text/javascript" ></script>
<title>订单管理</title>
</head>

<body>
<div class="margin clearfix">
 <%--<div class="Order_form clearfix" id="Order_form_style">--%>
 <%--<div class="title_name">购物产品所占比例  --%>
     <%--<span class="top_show_btn Statistic_btn">显示</span> --%>
     <%--<span class="Statistic_title Statistic_btn"><a title="隐藏" class="top_close_btn">隐藏</a></span>--%>
 <%--</div>--%>
 <%--<div class="hide_style clearfix">--%>
   <%--<div class="proportion"> <div class="easy-pie-chart percentage" data-percent="20" data-color="#D15B47"><span class="percent">20</span>%</div><span class="name">食品类</span></div>									--%>
   <%--<div class="proportion"> <div class="easy-pie-chart percentage" data-percent="55" data-color="#87CEEB"><span class="percent">55</span>%</div><span class="name">服装类</span></div>									--%>
   <%--<div class="proportion"> <div class="easy-pie-chart percentage" data-percent="90" data-color="#87B87F"><span class="percent">90</span>%</div><span class="name">数码配件</span></div>--%>
   <%--<div class="proportion"> <div class="easy-pie-chart percentage" data-percent="30" data-color="#d63116"><span class="percent">30</span>%</div><span class="name">手机</span></div>--%>
   <%--<div class="proportion"> <div class="easy-pie-chart percentage" data-percent="60" data-color="#ff6600"><span class="percent">60</span>%</div><span class="name">电脑</span></div>--%>
   <%--<div class="proportion"> <div class="easy-pie-chart percentage" data-percent="40" data-color="#2ab023"><span class="percent">40</span>%</div><span class="name">电子产品</span></div>--%>
   <%--<div class="proportion"> <div class="easy-pie-chart percentage" data-percent="46" data-color="#1e3ae6"><span class="percent">46</span>%</div><span class="name">厨房用品</span></div>--%>
   <%--<div class="proportion"> <div class="easy-pie-chart percentage" data-percent="65" data-color="#c316a9"><span class="percent">65</span>%</div><span class="name">家用电器</span></div>--%>
   <%--<div class="proportion"> <div class="easy-pie-chart percentage" data-percent="56" data-color="#13a9e1"><span class="percent">56</span>%</div><span class="name">卫浴</span></div>--%>
 <%--</div>--%>
 <%--</div>--%>

<!--订单表格-->
<div class="order_list" id="order_list">
  <div class="h_products_list clearfix" id="products_list">
       <div id="scrollsidebar" class="left_Treeview">
        <div class="show_btn" id="rightArrow"><span></span></div>
        <div class="widget-box side_content">
         <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
         <div class="side_list"><div class="widget-header header-color-green2"><h4 class="lighter smaller">订单类型分类</h4></div>
         <div class="widget-body">
         <ul class="b_P_Sort_list">
             <li><i class="orange  fa fa-reorder"></i><a href="#" id="allOrderCount">全部订单(235)</a></li>
             <li><i class="fa fa-sticky-note pink "></i> <span id="allOrderCount5">奶粉(235)</span></li>
             <li><i class="fa fa-sticky-note pink "></i> <span id="allOrderCount4">尿裤湿巾(2215)</span> </li>
             <li><i class="fa fa-sticky-note pink "></i> <span id="allOrderCount3">童床(3456)</span></li>
             <li><i class="fa fa-sticky-note pink "></i> <span id="allOrderCount2">宝宝玩具(4332)</span></li>
             <li><i class="fa fa-sticky-note pink "></i> <span id="allOrderCount1">宝宝洗护(4332)</span></li>
            </ul>
        </div>
       </div>
      </div>
     </div>
     <!--订单列表-->
     <div class="table_menu_list order_style" id="table_order_list">
       <div class="search_style">
      <div class="title_names">搜索查询</div>
      <ul class="search_content clearfix">
       <li><label class="l_f">订单编号</label><input name="" id="oNum" type="text" class="text_add" placeholder="订单订单编号" style=" width:250px"></li>
       <li><label class="l_f">时间</label><input class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
       <li style="width:90px;"><button type="button" onclick="selLocal();" class="btn_search"><i class="fa fa-search"></i>查询</button></li>
      </ul>
    </div>
         <div class="border clearfix">
       <span class="l_f">
        <%--<a href="javascript:ovid()" id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a>--%>
        <a href="javascript:multDel()" class="btn btn-danger"><i class="icon-trash"></i>批量删除</a>
       </span>
             <span class="r_f">共：<b id="allOrder">2345</b>条</span>
         </div>
     <!--订单列表展示-->
       <table class="table table-striped table-bordered table-hover" id="sample-table" >
		<thead>
		 <tr>
				<th width="35px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="150px">订单编号</th>
				<th width="230px">产品名称</th>
				<th width="100px">总价</th>
				<%--<th width="100px">优惠</th>--%>
                <th width="140px">订单时间</th>
				<th width="180px">所属类型</th>
                <th width="80px">数量</th>
				<th width="80px">状态</th>
				<th width="200px">操作</th>
			</tr>
		</thead>
	<tbody id="hi">
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="products/p_1.jpg"  title="产品名称"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="products/p_2.jpg"  title="产品名称"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>食品</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">代发货</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10001')"  href="javascript:;" title="发货"  class="btn btn-xs btn-success"><i class="fa fa-cubes bigger-120"></i></a> 
     <a title="订单详细" href="order_detailed.do" class="btn btn-xs btn-info order_detailed" ><i class="fa fa-list bigger-120"></i></a>
     <a title="删除" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>    
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="products/p_1.jpg"  title="产品名称"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="products/p_2.jpg"  title="产品名称"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>食品</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">代发货</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10003')"  href="javascript:;" title="发货"  class="btn btn-xs btn-success"><i class="fa fa-cubes bigger-120"></i></a> 
     <a title="订单详细" href="order_detailed.order_detailed.jsp" class="btn btn-xs btn-info order_detailed" ><i class="fa fa-list bigger-120"></i></a>
     <a title="删除" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>    
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="products/p_1.jpg"  title="产品名称"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="products/p_2.jpg"  title="产品名称"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>食品</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">代发货</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10005')"  href="javascript:;" title="发货"  class="btn btn-xs btn-success"><i class="fa fa-cubes bigger-120"></i></a> 
     <a title="订单详细" href="order_detailed.order_detailed.jsp" class="btn btn-xs btn-info order_detailed" ><i class="fa fa-list bigger-120"></i></a>
     <a title="删除" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>    
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="products/p_1.jpg"  title="产品名称"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="products/p_2.jpg"  title="产品名称"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>食品</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">代发货</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10034')"  href="javascript:;" title="发货"  class="btn btn-xs btn-success"><i class="fa fa-cubes bigger-120"></i></a> 
     <a title="订单详细" href="order_detailed.order_detailed.jsp" class="btn btn-xs btn-info order_detailed" ><i class="fa fa-list bigger-120"></i></a>
     <a title="删除" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>    
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="products/p_5.jpg"  title="产品名称"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="products/p_4.jpg"  title="产品名称"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>食品</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">代发货</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10012')"  href="javascript:;" title="发货"  class="btn btn-xs btn-success"><i class="fa fa-cubes bigger-120"></i></a> 
     <a title="订单详细" href="order_detailed.order_detailed.jsp" class="btn btn-xs btn-info order_detailed" ><i class="fa fa-list bigger-120"></i></a>
     <a title="删除" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>    
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="products/p_3.jpg"  title="产品名称"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="products/p_7.jpg"  title="产品名称"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>食品</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">代发货</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10061')"  href="javascript:;" title="发货"  class="btn btn-xs btn-success"><i class="fa fa-cubes bigger-120"></i></a> 
     <a title="订单详细" href="order_detailed.order_detailed.jsp" class="btn btn-xs btn-info order_detailed" ><i class="fa fa-list bigger-120"></i></a>
     <a title="删除" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>    
     </td>
     </tr>
     </tbody>
     </table>
   </div>
  </div>
 </div>
 <!--发货-->
 <div id="Delivery_stop" style=" display:none">
  <div class="">
    <div class="content_style">
  <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">快递公司 </label>
       <div class="col-sm-9"><select class="form-control" id="form-field-select-1">
																<option value="">--选择快递--</option>
																<option value="1">天天快递</option>
																<option value="2">圆通快递</option>
																<option value="3">中通快递</option>
																<option value="4">顺丰快递</option>
																<option value="5">申通快递</option>
																<option value="6">邮政EMS</option>
																<option value="7">邮政小包</option>
																<option value="8">韵达快递</option>
															</select></div>
	</div>
   <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 快递号 </label>
    <div class="col-sm-9"><input type="text" id="form-field-1" placeholder="快递号" class="col-xs-10 col-sm-5" style="margin-left:0px;"></div>
	</div>
    <%--<div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">货到付款 </label>--%>
     <%--<div class="col-sm-9"><label><input name="checkbox" type="checkbox" class="ace" id="checkbox"><span class="lbl"></span></label></div>--%>
	<%--</div>--%>
 </div>
  </div>
 </div>
</body>
</html>
<script>


    /* 查询所有的订单数*/
    function allOrder() {
        $.post("${pageContext.request.contextPath}/selAllCountOrder.do",function(data){
            $("#allOrderCount").html("");
            $("#allOrderCount").html("全部订单("+data+")");
            $("#allOrder").html("");
            $("#allOrder").html(data);


        });
    }
    /* 查询所有的订单数*/
    function allOrderGoodsType1() {
        $.post("${pageContext.request.contextPath}/selAllOrder1.do",function(data){
            $("#allOrderCount1").html("");
            $("#allOrderCount1").html("宝宝洗护("+data+")");
        });
    }
    /* 查询所有的订单数*/
    function allOrderGoodsType2() {
        $.post("${pageContext.request.contextPath}/selAllOrder2.do",function(data){
            $("#allOrderCount2").html("");
            $("#allOrderCount2").html("宝宝玩具 ("+data+")");
        });
    }
    /* 查询所有的订单数*/
    function allOrderGoodsType3() {
        $.post("${pageContext.request.contextPath}/selAllOrder3.do",function(data){
            $("#allOrderCount3").html("");
            $("#allOrderCount3").html("童床("+data+")");
        });
    }
    /* 查询所有的订单数*/
    function allOrderGoodsType4() {
        $.post("${pageContext.request.contextPath}/selAllOrder4.do",function(data){
            $("#allOrderCount4").html("");
            $("#allOrderCount4").html("尿裤湿巾 ("+data+")");
        });
    }
    /* 查询所有的订单数*/
    function allOrderGoodsType5() {
        $.post("${pageContext.request.contextPath}/selAllOrder5.do",function(data){
            $("#allOrderCount5").html("");
            $("#allOrderCount5").html("奶粉("+data+")");
        });
    }
    // <tr>
    // <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
    // <td>20160705445622</td>
    // <td class="order_product_name">
    //     <a href="#"><img src="products/p_1.jpg"  title="产品名称"/></a>
    //     <i class="fa fa-plus"></i>
    //     <a href="#"><img src="products/p_2.jpg"  title="产品名称"/></a>
    //     </td>
    //     <td>456.5</td>
    //     <td>14</td>
    //     <td>2016-7-5</td>
    //     <td>食品</td>
    //     <td>2</td>
    //     <td class="td-status"><span class="label label-success radius">代发货</span></td>
    // <td>
    // <a onClick="Delivery_stop(this,'10001')"  href="javascript:;" title="发货"  class="btn btn-xs btn-success"><i class="fa fa-cubes bigger-120"></i></a>
    // <a title="订单详细" href="order_detailed.do" class="btn btn-xs btn-info order_detailed" ><i class="fa fa-list bigger-120"></i></a>
    // <a title="删除" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-warning" ><i class="fa fa-trash  bigger-120"></i></a>
    // </td>
    // </tr>
    init();

    function selLocal() {

        init();
        $("#oNum").val("");
        //$("#start").val("");
    }

    function init() {


        $("#hi").html("");
        $.ajax({
            url:'${pageContext.request.contextPath}/selAllOrder.do',
            type:'post',
            data:{
                "oNum":$("#oNum").val(),
                "oTime":$("#start").val(),
            },
            dataType:'json',
            success:function(data){
                var obj=eval(data);
                var $str='';
                $.each(obj,function(i,x){

                    var power="";
                    if (x.gType==1) {
                        power='宝宝洗护';
                    }else if (x.gType==3){
                        power='童床';
                    }else if (x.gType==2){
                        power='宝宝玩具';
                    }else if (x.gType==4){
                        power='尿裤湿巾';
                    }else if (x.gType==5){
                        power='奶粉';
                    }
                    
                    var state="";
                    var btn ="";
                    if (x.oState==0) {
                        state="未发货";
                        btn="<a onClick='Delivery_stop(this,"+x.oId+")'  href='javascript:;' title='发货'  class='btn btn-xs btn-success'><i class='fa fa-cubes bigger-120'></i></a>";
                    } else if(x.oState==1){
                        state="已发货";
                        btn="";
                    }

                    // http://localhost:8080/bom/img/)(RO}BLH~JI60Z{OVFA`9_I.png
                    $str=$str+"<tr><td><label><input type='checkbox' name='Multiple_Selection' class='ace' value='"+x.oId+"'><span class='lbl'></span></label></td>"
                        +"<td>"+x.oNum+"</td>"
                        +"<td>"+x.gName+"</td>"
                        +"<td>"+(x.gPrice*x.cNum)+"</td>"
                        +"<td>"+x.oTime+"</td>"
                        +"<td>"+power+"</td>"
                        +"<td>"+x.cNum+"</td>"
                        +"<td class='td-status'><span class='label label-success radius'>"+state+"</span></td>"
                        +"<td>"+btn+" " +
                        "<a title='订单详细' href='order_detailed.do?oId="+x.oId+"' class='btn btn-xs btn-info order_detailed' ><i class='fa fa-list bigger-120'></i></a>" +
                        "<a title='删除' href='javascript:;'  onclick='Order_form_del(this,"+x.oId+")' class='btn btn-xs btn-warning'><i class='fa fa-trash  bigger-120'></i></a></td>"
                        +"</tr>";


                });
                $("#hi").html($str);

                allOrder();
                allOrderGoodsType1();
                allOrderGoodsType2();
                allOrderGoodsType3();
                allOrderGoodsType4();
                allOrderGoodsType5();
            },
            error:function(){
                layer.alert("错误操作!",{icon:2});
            }

        });

    }




    function multDel() {

        layer.confirm('确认要删除这些商品吗？',function(index){

            var MDuserState="";
            //var checks = $("input[name='MultipleSelection']");
            var mdobj=$("input[name='Multiple_Selection']");
            mdobj.each(function(i,x) {
                if (x.checked) {
                  //  alert(x.value);
                    MDuserState+=x.value+",";
                }
            });
           // alert(MDuserState);

            $.post("${pageContext.request.contextPath}/upOrderMaryDel.do",{OrderIds:MDuserState},function(data){

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




//左侧显示隐藏
$(function() { 
	$("#order_list").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',	
		durationTime :false,
		spacingw:50,//设置隐藏时的距离
	    spacingh:270,//设置显示时间距
		close_btn:'.close_btn',
		show_btn:'.show_btn',
		side_list:'.side_list',
	});
});
//顶部隐藏显示
$(function() { 
	$("#Order_form_style").fix({
		float : 'top',
		//minStatue : true,
		skin : 'green',	
		durationTime :true,
		spacingw:0,
		spacingh:0,
		close_btn:'.top_close_btn',
		show_btn:'.top_show_btn',
		side_list:'.hide_style',
		close_btn_width:80,
		side_title:'.Statistic_title',
	});
});
//时间选择
 laydate({
    elem: '#start',
    event: 'focus' 
});
/*订单-删除*/
function Order_form_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		// $(obj).parents("tr").remove();
		// layer.msg('已删除!',{icon:1,time:1000});
        $.post("${pageContext.request.contextPath}/upOrderState.do",{oId:id},function(data){
            if (data==1) {
                layer.msg('已删除!',{icon:1,time:1000});
            } else if(data==0) {
                layer.msg('删除失败!',{icon:0,time:1000});
            }
            init();
        });
	});
}
/**发货**/
function Delivery_stop(obj,id){
   // alert(id);
	layer.open({
        type: 1,
        title: '发货',
		maxmin: true, 
		shadeClose:false,
        area : ['500px' , ''],
        content:$('#Delivery_stop'),
		btn:['确定','取消'],
		yes: function(index, layero){		
		if($('#form-field-1').val()==""){
			layer.alert('快递号不能为空！',{
               title: '提示框',				
			  icon:0,		
			  }) 
			
			}else{

		    
			 layer.confirm('提交成功！',function(index){
                // $(obj).parents("tr").find(".td-manage").prepend('<a style=" display:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="已发货"><i class="fa fa-cubes bigger-120"></i></a>');
                // $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发货</span>');
                // $(obj).remove();
                 $.post("${pageContext.request.contextPath}/deliverGoods.do",{oId:id},function (data) {
                     if (data==1){
                         layer.msg('已发货!',{icon: 6,time:1000});
                     } else if (data==0){
                         layer.msg('发货失败!',{icon: 0,time:1000});
                     }
                     init();
                 });


                });

			layer.close(index);

		  }
		
		}
	})
};
//面包屑返回值
var index = parent.layer.getFrameIndex(window.name);
parent.layer.iframeAuto(index);
$('.Order_form,.order_detailed').on('click', function(){
	var cname = $(this).attr("title");
	var chref = $(this).attr("href");
	var cnames = parent.$('.Current_page').html();
	var herf = parent.$("#iframe").attr("src");
    parent.$('#parentIframe').html(cname);
    parent.$('#iframe').attr("src",chref).ready();;
	parent.$('#parentIframe').css("display","inline-block");
	parent.$('.Current_page').attr({"name":herf,"href":"javascript:void(0)"}).css({"color":"#4c8fbd","cursor":"pointer"});
	//parent.$('.Current_page').html("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
    parent.layer.close(index);
	
});

//初始化宽度、高度
$(".hide_style").height($(".hide_style").height()); 
 var heights=$(".hide_style").outerHeight(true)+90;  
 $(".widget-box").height($(window).height()-heights); 
$(".table_menu_list").width($(window).width()-250);
 $(".table_menu_list").height($(window).height()-heights);
  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	$(".widget-box").height($(window).height()-heights);
	 $(".table_menu_list").width($(window).width()-250);
	  $(".table_menu_list").height($(window).height()-heights);
	})
//比例
var oldie = /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase());
			$('.easy-pie-chart.percentage').each(function(){
				$(this).easyPieChart({
					barColor: $(this).data('color'),
					trackColor: '#EEEEEE',
					scaleColor: false,
					lineCap: 'butt',
					lineWidth: 10,
					animate: oldie ? false : 1000,
					size:103
				}).css('color', $(this).data('color'));
			});
		
			$('[data-rel=tooltip]').tooltip();
			$('[data-rel=popover]').popover({html:true});
</script>
<script>
//订单列表
jQuery(function($) {
		// var oTable1 = $('#sample-table').dataTable( {
		// "aaSorting": [[ 1, "desc" ]],//默认第几个排序
		// "bStateSave": true,//状态保存
		// "aoColumnDefs": [
		//   //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		//   {"orderable":false,"aTargets":[0,1,2,3,4,5,6,7,8,9]}// 制定列不参与排序
		// ] } );
				
				
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
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
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			});
</script>