<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
        <link href="${pageContext.request.contextPath}/assets/css/codemirror.css" rel="stylesheet">
		<!--[if IE 7]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>
		<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath}/assets/js/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
		<![endif]-->
        		<!--[if !IE]> -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
		<!-- <![endif]-->
    `   <script src="${pageContext.request.contextPath}/assets/dist/echarts.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        
      
       <title>无标题文档</title>
       </head>
<body>
<div class="page-content clearfix">
 <div class="alert alert-block alert-success">
  <button type="button" class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
     <i class="icon-ok green"></i>欢迎使用<strong class="green">后台管理系统<small>(v1.2)</small></strong>,你本次登陆时间为<span id="dataT1"></span>，登陆IP:192.168.1.110.
 </div>
 <div class="state-overview clearfix">
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                      <a href="#" title="商城会员">
                          <div class="symbol terques">
                             <i class="icon-user"></i>
                          </div>
                          <div class="value">
                              <h1 id="allUser">34522</h1>
                              <p>商城用户</p>
                          </div>
                          </a>
                      </section>
                  </div>
                  <%--<div class="col-lg-3 col-sm-6">--%>
                      <%--<section class="panel">--%>
                          <%--<div class="symbol red">--%>
                              <%--<i class="icon-tags"></i>--%>
                          <%--</div>--%>
                          <%--<div class="value">--%>
                              <%--<h1>140</h1>--%>
                              <%--<p>分销记录</p>--%>
                          <%--</div>--%>
                      <%--</section>--%>
                  <%--</div>--%>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol yellow">
                              <i class="icon-shopping-cart"></i>
                          </div>
                          <div class="value">
                              <h1 id="allOrderCount">345</h1>
                              <p>商城订单</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol blue">
                              <i class="icon-bar-chart"></i>
                          </div>
                          <div class="value">
                              <h1 id="allMoney">￥34,500</h1>
                              <p>交易记录</p>
                          </div>
                      </section>
                  </div>
              </div>
             <!--实时交易记录-->
             <div class="clearfix">
             <div class="t_Record">
               <div id="main" style="height:300px; overflow:hidden; width:100%; overflow:auto" ></div>     
              </div> 
         <div class="news_style">
          <div class="title_name">最新消息</div>
          <ul class="list">
           <li><i class="icon-bell red"></i><a href="#">后台系统正式完工了。</a></li>
           <li><i class="icon-bell red"></i><a href="#">后台系统正式完工了。</a></li>
           <li><i class="icon-bell red"></i><a href="#">后台系统正式完工了。</a></li>
           <li><i class="icon-bell red"></i><a href="#">后台系统正式完工了。</a></li>
           <li><i class="icon-bell red"></i><a href="#">后台系统正式完工了。</a></li>
          </ul>
         </div> 
         </div>


<script type="text/javascript">
    allUser();
    allOrder();
    selAllMoney();

    /* 查询所有的用户数*/
    function allUser() {
        $.post("${pageContext.request.contextPath}/selAllUserCount.do",function(data){
            $("#allUser").html("");
            $("#allUser").html("&nbsp;&nbsp;"+data+"&nbsp;&nbsp;");
        });
    }
    /* 查询所有的订单数*/
    function allOrder() {
        $.post("${pageContext.request.contextPath}/selAllCountOrder.do",function(data){
            $("#allOrderCount").html("");
            $("#allOrderCount").html("&nbsp;&nbsp;"+data+"&nbsp;&nbsp;");
        });
    }
    /* 查询所有的订单数*/
    function selAllMoney() {
        $.post("${pageContext.request.contextPath}/selAllMoney.do",function(data){
            $("#allMoney").html("");
            $("#allMoney").html("&nbsp;&nbsp;￥"+data+"&nbsp;&nbsp;");
        });
    }






    function currentTime() {
        var d = new Date(), str = '';
        str += d.getFullYear() + '年';
        str += d.getMonth() + 1 + '月';
        str += d.getDate() + '日';
        str += d.getHours() + '时';
        str += d.getMinutes() + '分';
        str += d.getSeconds() + '秒';
        return str;
    }


    $("#dataT1").html(currentTime());

     $(document).ready(function(){
		 
		  $(".t_Record").width($(window).width()-320);
		  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
		 $(".t_Record").width($(window).width()-320);
		});
 });
	 
	 
        require.config({
            paths: {
                echarts: "${pageContext.request.contextPath}/assets/dist"
            }
        });
        require(
            [
                'echarts',
				'echarts/theme/macarons',
                'echarts/chart/line',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
                'echarts/chart/bar'
            ],
            function (ec,theme) {
                var myChart = ec.init(document.getElementById('main'),theme);
                $.post("${pageContext.request.contextPath}/selZx.do",function(data){

                    var sy=(data.listSyDd);
                    var dfh=(data.listDfh);
                    var yfh=(data.listYfh);

               option = {
    title : {
        text: '月购买订单交易记录',
        subtext: '实时获取用户订单购买记录'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['所有订单','待发货','已发货']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'所有订单',
            type:'bar',
            data:sy,
            markPoint : {
                data : [
                    {type : 'max', name: '最大值'},
                    {type : 'min', name: '最小值'}
                ]
            }           
        },
        {
            name:'待发货',
            type:'bar',
            data:dfh,
            markPoint : {
                data : [
                    // {name : '年最高', value : 1182, xAxis: 7, yAxis: 1182, symbolSize:18},
                    // {name : '年最低', value : 23, xAxis: 11, yAxis: 3}
                    {type : 'max', name: '最大值'},
                    {type : 'min', name: '最小值'}
                ]
            },
           
			
        }
		// , {
        //     name:'已付款',
        //     type:'bar',
        //     data:[26, 59, 60, 264, 287, 77, 176, 122, 247, 148, 60, 23],
        //     markPoint : {
        //         data : [
        //             {name : '年最高', value : 172, xAxis: 7, yAxis: 172, symbolSize:18},
        //             {name : '年最低', value : 23, xAxis: 11, yAxis: 3}
        //         ]
        //     },
        //
		// }
		, {
            name:'已发货',
            type:'bar',
            data:yfh,
            markPoint : {
                data : [
                    // {name : '年最高', value : 1072, xAxis: 7, yAxis: 1072, symbolSize:18},
                    // {name : '年最低', value : 22, xAxis: 11, yAxis: 3}
                    {type : 'max', name: '最大值'},
                    {type : 'min', name: '最小值'}
                ]
            },
           
		}
    ]
};
                    
                myChart.setOption(option);
            });
            });
    </script> 
     </div>
</body>
</html>
