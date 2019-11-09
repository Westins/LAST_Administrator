<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/html5.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/respond.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/PIE_IE678.js"></script>
    <![endif]-->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link href="${pageContext.request.contextPath}/assets/css/codemirror.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Widget/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
    <!--[if IE 7]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <link href="${pageContext.request.contextPath}/Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/Widget/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />

    <title>新增图片</title>
</head>
<body>
<div class="clearfix" id="add_picture">
    <div id="scrollsidebar" class="left_Treeview">
        <div class="show_btn" id="rightArrow"><span></span></div>
        <div class="widget-box side_content" >
            <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
            <div class="side_list">
                <div class="widget-header header-color-green2">
                    <h4 class="lighter smaller">选择产品类型</h4>
                </div>
                <div class="widget-body">
                    <div class="widget-main padding-8">
                        <div  id="treeDemo" class="ztree"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page_right_style">
        <div class="type_title">添加商品</div>
        <form action="" method="post" class="form form-horizontal" id="form-article-add">
            <div class="clearfix cl">
                <label class="form-label col-2"><span class="c-red">*</span>图片标题：</label>
                <div class="formControls col-10"><input type="text" class="input-text" value="" placeholder="" id="" name=""></div>
            </div>
            <div class=" clearfix cl">
                <label class="form-label col-2">简略标题：</label>
                <div class="formControls col-10"><input type="text" class="input-text" value="" placeholder="" id="" name=""></div>
            </div>
            <div class=" clearfix cl">

                <div class="Add_p_s">
                    <label class="form-label col-2">产品编号：</label>
                    <div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="" name=""></div>
                </div>
                <div class="Add_p_s">
                    <label class="form-label col-2">产&nbsp;&nbsp;&nbsp;&nbsp;地：</label>
                    <div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="" name=""></div>
                </div>
                <div class="Add_p_s">
                    <label class="form-label col-2">材&nbsp;&nbsp;&nbsp;&nbsp;质：</label>
                    <div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="" name=""></div>
                </div>
                <div class="Add_p_s">
                    <label class="form-label col-2">品&nbsp;&nbsp;&nbsp;&nbsp;牌：</label>
                    <div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="" name=""></div>
                </div>
                <div class="Add_p_s">
                    <label class="form-label col-2">产品重量：</label>
                    <div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="" name="" >kg</div>
                </div>
                <div class="Add_p_s">
                    <label class="form-label col-2">单位：</label>
                    <div class="formControls col-2"><span class="select-box">
				<select class="select">
					<option>请选择</option>
					<option value="1">件</option>
					<option value="2">斤</option>
					<option value="3">KG</option>
					<option value="4">吨</option>
					<option value="5">套</option>
				</select>
				</span></div>
                </div>
                <div class="Add_p_s">
                    <label class="form-label col-2">展示价格：</label>
                    <div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="" name="" >元</div>
                </div>
                <div class="Add_p_s">
                    <label class="form-label col-2">市场价格：</label>
                    <div class="formControls col-2"><input type="text" class="input-text" value="" placeholder="" id="" name="" >元</div>
                </div>


            </div>

            <div class="clearfix cl">
                <label class="form-label col-2">关键词：</label>
                <div class="formControls col-10">
                    <input type="text" class="input-text" value="" placeholder="" id="" name="">
                </div>
            </div>
            <div class="clearfix cl">
                <label class="form-label col-2">内容摘要：</label>
                <div class="formControls col-10">
                    <textarea name="" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,200)"></textarea>
                    <p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
                </div>
            </div>
            <%--<form enctype="multipart/form-data" method="post">--%>
                <%--<div id="uploader" class="wu-example" style="margin-left: 50px">--%>
                    <%--<div class="queueList">--%>
                        <%--<div id="dndArea" class="placeholder">--%>
                            <%--<div id="filePicker"></div>--%>
                            <%--<p>或将照片拖到这里，单次最多可选300张</p>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="statusBar" style="display: none;">--%>
                        <%--<div class="progress">--%>
                            <%--<span class="text">0%</span> <span class="percentage"></span>--%>
                        <%--</div>--%>
                        <%--<div class="info"></div>--%>
                        <%--<div class="btns">--%>
                            <%--<div id="filePicker2"></div>--%>
                            <%--<div class="uploadBtn">开始上传</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</form>--%>
            <div class="clearfix cl">
                <label class="form-label col-2">图片上传：</label>
                <div class="formControls col-10">
                    <div class="uploader-list-container">
                        <div class="queueList">
                            <div id="dndArea" class="placeholder">
                                <div id="filePicker"></div>
                                <p>或将照片拖到这里，单次最多可选300张</p>
                            </div>
                        </div>
                        <div class="statusBar" style="display:none;">
                            <div class="progress"> <span class="text">0%</span> <span class="percentage"></span> </div>
                            <div class="info"></div>
                            <div class="btns">
                                <div id="filePicker-2"></div>
                                <div class="uploadBtn">开始上传</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           <div class="clearfix cl">
                <label class="form-label col-2">详细内容：</label>
                <div class="formControls col-10">
                    <div id="editor" type="text/plain" style="width:1150px;height:400px;margin-left: 22px"></div>
                    </div>
                    </div>
                    <div class="clearfix cl">
                        <label class="form-label col-2">允许评论：</label>
                    <div class="formControls col-2 skin-minimal">
                        <div class="check-box" style=" margin-top:9px"><input type="checkbox" id="checkbox-1"><label for="checkbox-1">&nbsp;</label></div>
                    </div>
                    </div>
                    <div class="clearfix cl">
                        <div class="Button_operation">
                        <button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="icon-save "></i>保存并提交审核</button>
                    <!-- <button onClick="article_save();" class="btn btn-secondary  btn-warning" type="button"><i class="icon-save"></i>保存草稿</button> -->
                    <button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
                    </div>
                    </div>
                    </form>
                    </div>
                    </div>
                    </div>
                    <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
                    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
                    <script src="${pageContext.request.contextPath}/assets/js/typeahead-bs2.min.js"></script>
                    <script src="${pageContext.request.contextPath}/assets/layer/layer.js" type="text/javascript" ></script>
                    <script src="${pageContext.request.contextPath}/assets/laydate/laydate.js" type="text/javascript"></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/My97DatePicker/WdatePicker.js"></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/icheck/jquery.icheck.min.js"></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/zTree/js/jquery.ztree.all-3.5.min.js"></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/Validform/5.3.2/Validform.min.js"></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/webuploader/0.1.5/webuploader.min.js"></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/ueditor/1.4.3/ueditor.config.js"></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/ueditor/1.4.3/ueditor.all.min.js"> </script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/Widget/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
                    <script src="${pageContext.request.contextPath}/js/lrtk.js" type="text/javascript" ></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.js"></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/js/H-ui.admin.js"></script>
                    <script>
                        $(function() {
                            $("#add_picture").fix({
                                float : 'left',
                                skin : 'green',
                                durationTime :false,
                                stylewidth:'220',
                                spacingw:0,
                                spacingh:260,
                            });
                        });
                        $( document).ready(function(){
//初始化宽度、高度

                            $(".widget-box").height($(window).height());
                            $(".page_right_style").height($(window).height());
                            $(".page_right_style").width($(window).width()-220);
                            //当文档窗口发生改变时 触发
                            $(window).resize(function(){

                                $(".widget-box").height($(window).height());
                                $(".page_right_style").height($(window).height());
                                $(".page_right_style").width($(window).width()-220);
                            });
                        });
                        $(function(){
                            var ue = window.UE.getEditor('editor');
                        });
                        /******树状图********/
                        var setting = {
                            view: {
                                dblClickExpand: false,
                                showLine: false,
                                selectedMulti: false
                            },
                            data: {
                                simpleData: {
                                    enable:true,
                                    idKey: "id",
                                    pIdKey: "pId",
                                    rootPId: ""
                                }
                            },
                            callback: {
                                beforeClick: function(treeId, treeNode) {
                                    var zTree = $.fn.zTree.getZTreeObj("tree");
                                    if (treeNode.isParent) {
                                        zTree.expandNode(treeNode);
                                        return false;
                                    } else {
                                        demoIframe.attr("src",treeNode.file + ".html");
                                        return true;
                                    }
                                }
                            }
                        };

                        var zNodes =[
                            {id: 1, pId: 0, name: "商城分类列表", open: true},
                            {id: 11, pId: 1, name: "宝宝玩具"},
                            {id: 12, pId: 1, name: "童床"},
                            {id: 13, pId: 1, name: "尿裤湿巾"},
                            {id: 14, pId: 1, name: "奶粉"},
                        ];

                        var code;

                        function showCode(str) {
                            if (!code) code = $("#code");
                            code.empty();
                            code.append("<li>"+str+"</li>");
                        }
                        $(document).ready(function(){
                            var t = $("#treeDemo");
                            t = $.fn.zTree.init(t, setting, zNodes);
                            demoIframe = $("#testIframe");
                            //demoIframe.bind("load", loadReady);
                            var zTree = $.fn.zTree.getZTreeObj("tree");
                            //zTree.selectNode(zTree.getNodeByParam("id",'11'));
                        });
                    </script>
                    <script type="text/javascript">
                        

                        $(function(){
                            $('.skin-minimal input').iCheck({
                                checkboxClass: 'icheckbox-blue',
                                radioClass: 'iradio-blue',
                                increaseArea: '20%'
                            });

                            $list = $("#fileList"),
                                $btn = $("#btn-star"),
                                state = "pending",
                                uploader;



                            $btn.on('click', function () {
                                if (state === 'uploading') {
                                    uploader.stop();
                                } else {
                                    uploader.upload();
                                }
                            });

                        });

                        jQuery(function() {
                            var $ = jQuery, // just in case. Make sure it's not an other libaray.
                                $wrap = $('.uploader-list-container'),
                                // 图片容器
                                $queue = $('<ul class="filelist"></ul>').appendTo($wrap.find('.queueList')),
                                // 状态栏，包括进度和控制按钮
                                $statusBar = $wrap.find('.statusBar'),
                                // 文件总体选择信息。
                                $info = $statusBar.find('.info'),
                                // 上传按钮
                                $upload = $wrap.find('.uploadBtn'),
                                // 没选择文件之前的内容。
                                $placeHolder = $wrap.find('.placeholder'),
                                // 总体进度条
                                $progress = $statusBar.find('.progress').hide(),
                                // 添加的文件数量
                                fileCount = 0,
                                // 添加的文件总大小
                                fileSize = 0,
                                // 优化retina, 在retina下这个值是2
                                ratio = window.devicePixelRatio || 1,
                                // 缩略图大小
                                thumbnailWidth = 110 * ratio, thumbnailHeight = 110 * ratio,
                                // 可能有pedding, ready, uploading, confirm, done.
                                state = 'pedding',
                                // 所有文件的进度信息，key为file id
                                percentages = {},
                                supportTransition = (function() {
                                    var s = document.createElement('p').style, r = 'transition' in s
                                        || 'WebkitTransition' in s || 'MozTransition' in s
                                        || 'msTransition' in s || 'OTransition' in s;
                                    s = null;
                                    return r;
                                })(),
                                // WebUploader实例
                                uploader;
                            // 检测浏览器是否支持webuploader
                            if (!WebUploader.Uploader.support()) {
                                alert('Web Uploader 不支持您的浏览器！如果你使用的是IE浏览器，请尝试升级 flash 播放器');
                                throw new Error(
                                    'WebUploader does not support the browser you are using.');
                            }
                            // 实例化
                            uploader = WebUploader.create({
                                // 选完文件后，是否自动上传
                                auto : false,
                                // swf文件路径，flash上传时使用
                                swf : "${pageContext.request.contextPath}/Widget/webuploader/0.1.5/Uploader.swf",
                                // 文件接收服务端路径
                                server : "http://localhost:8080/bom/upload.do",
                                // 选择文件的按钮
                                pick : {
                                    id : '#filePicker-2',
                                    innerHTML : '点击选择图片'
                                },
                                // 指定接收哪些类型的文件
                                accept : {
                                    title : "images", // 文字描述
                                    extensions : "jpg,jpeg,bmp,png",
                                    mimeTypes : "image/jpg,image/x-ms-bmp,image/png"
                                },
                                // 配置生成缩略图的选项
                                thumb : {
                                    width : 110,
                                    height : 110,
                                    // 是否允许放大
                                    allowmagnify : false,
                                    // 是否允许裁剪
                                    crop : true
                                },
                                // 配置压缩图片的选项，如果此项为false，则上传前不压缩
                                compress : false,
                                // 限制文件总数量，超出则不允许加入队列
                                fileNumLimit : "5",
                                // 限制单个文件大小
                                fileSingleSizeLimit : 5 * 1024 * 1024, // 5M
                                // 去重
                                duplicate : true,
                                // 禁掉全局的拖拽功能。这样不会出现图片拖进页面的时候，把图片打开。
                                disableGlobalDnd : true,
                                dnd : "#dndArea",
                                paste: '#uploader',
                            });

                            // 添加“添加文件”的按钮，
                            uploader.addButton({
                                id : '#filePicker-2',
                                label : '继续添加'
                            });

                            // 当有文件添加进来时执行，负责view的创建
                            function addFile(file) {
                                var $li = $('<li id="' + file.id + '">' + '<p class="title">'
                                    + file.name + '</p>' + '<p class="imgWrap"></p>'
                                    + '<p class="progress"><span></span></p>' + '</li>'),

                                    $btns = $(
                                        '<div class="file-panel">' + '<span class="cancel">删除</span>'
                                        + '<span class="rotateRight">向右旋转</span>'
                                        + '<span class="rotateLeft">向左旋转</span></div>')
                                        .appendTo($li), $prgress = $li.find('p.progress span'), $wrap = $li
                                        .find('p.imgWrap'), $info = $('<p class="error"></p>'),

                                    showError = function(code) {
                                        switch (code) {
                                            case 'exceed_size':
                                                text = '文件大小超出';
                                                break;

                                            case 'interrupt':
                                                text = '上传暂停';
                                                break;

                                            default:
                                                text = '上传失败，请重试';
                                                break;
                                        }

                                        $info.text(text).appendTo($li);
                                    };

                                if (file.getStatus() === 'invalid') {
                                    showError(file.statusText);
                                } else {
                                    // @todo lazyload
                                    $wrap.text('预览中');
                                    uploader.makeThumb(file, function(error, src) {
                                        if (error) {
                                            $wrap.text('不能预览');
                                            return;
                                        }

                                        var img = $('<img src="' + src + '">');
                                        $wrap.empty().append(img);
                                    }, thumbnailWidth, thumbnailHeight);

                                    percentages[file.id] = [ file.size, 0 ];
                                    file.rotation = 0;
                                }

                                file.on('statuschange', function(cur, prev) {
                                    if (prev === 'progress') {
                                        $prgress.hide().width(0);
                                    } else if (prev === 'queued') {
                                        $li.off('mouseenter mouseleave');
                                        $btns.remove();
                                    }

                                    // 成功
                                    if (cur === 'error' || cur === 'invalid') {
                                        console.log(file.statusText);
                                        showError(file.statusText);
                                        percentages[file.id][1] = 1;
                                    } else if (cur === 'interrupt') {
                                        showError('interrupt');
                                    } else if (cur === 'queued') {
                                        percentages[file.id][1] = 0;
                                    } else if (cur === 'progress') {
                                        $info.remove();
                                        $prgress.css('display', 'block');
                                    } else if (cur === 'complete') {
                                        $li.append('<span class="success"></span>');
                                    }

                                    $li.removeClass('state-' + prev).addClass('state-' + cur);
                                });

                                $li.on('mouseenter', function() {
                                    $btns.stop().animate({
                                        height : 30
                                    });
                                });

                                $li.on('mouseleave', function() {
                                    $btns.stop().animate({
                                        height : 0
                                    });
                                });

                                $btns
                                    .on(
                                        'click',
                                        'span',
                                        function() {
                                            var index = $(this).index(), deg;

                                            switch (index) {
                                                case 0:
                                                    uploader.removeFile(file);
                                                    return;

                                                case 1:
                                                    file.rotation += 90;
                                                    break;

                                                case 2:
                                                    file.rotation -= 90;
                                                    break;
                                            }

                                            if (supportTransition) {
                                                deg = 'rotate(' + file.rotation + 'deg)';
                                                $wrap.css({
                                                    '-webkit-transform' : deg,
                                                    '-mos-transform' : deg,
                                                    '-o-transform' : deg,
                                                    'transform' : deg
                                                });
                                            } else {
                                                $wrap
                                                    .css(
                                                        'filter',
                                                        'progid:DXImageTransform.Microsoft.BasicImage(rotation='
                                                        + (~~((file.rotation / 90) % 4 + 4) % 4)
                                                        + ')');
                                            }

                                        });

                                $li.appendTo($queue);
                            }

                            // 负责view的销毁
                            function removeFile(file) {
                                var $li = $('#' + file.id);

                                delete percentages[file.id];
                                updateTotalProgress();
                                $li.off().find('.file-panel').off().end().remove();
                            }

                            function updateTotalProgress() {
                                var loaded = 0, total = 0, spans = $progress.children(), percent;

                                $.each(percentages, function(k, v) {
                                    total += v[0];
                                    loaded += v[0] * v[1];
                                });

                                percent = total ? loaded / total : 0;

                                spans.eq(0).text(Math.round(percent * 100) + '%');
                                spans.eq(1).css('width', Math.round(percent * 100) + '%');
                                updateStatus();
                            }

                            function updateStatus() {
                                var text = '', stats;

                                if (state === 'ready') {
                                    text = '选中' + fileCount + '张图片，共'
                                        + WebUploader.formatSize(fileSize) + '。';
                                } else if (state === 'confirm') {
                                    stats = uploader.getStats();
                                    if (stats.uploadFailNum) {
                                        text = '已成功上传'
                                            + stats.successNum
                                            + '张照片至XX相册，'
                                            + stats.uploadFailNum
                                            + '张照片上传失败，<a class="retry" href="#">重新上传</a>失败图片或<a class="ignore" href="#">忽略</a>'
                                    }

                                } else {
                                    stats = uploader.getStats();
                                    text = '共' + fileCount + '张（' + WebUploader.formatSize(fileSize)
                                        + '），已上传' + stats.successNum + '张';

                                    if (stats.uploadFailNum) {
                                        text += '，失败' + stats.uploadFailNum + '张';
                                    }
                                }

                                $info.html(text);
                            }

                            function setState(val) {
                                var file, stats;

                                if (val === state) {
                                    return;
                                }

                                $upload.removeClass('state-' + state);
                                $upload.addClass('state-' + val);
                                state = val;

                                switch (state) {
                                    case 'pedding':
                                        $placeHolder.removeClass('element-invisible');
                                        $queue.parent().removeClass('filled');
                                        $queue.hide();
                                        $statusBar.addClass('element-invisible');
                                        uploader.refresh();
                                        break;

                                    case 'ready':
                                        $placeHolder.addClass('element-invisible');
                                        $('#filePicker-2').removeClass('element-invisible');
                                        $queue.parent().addClass('filled');
                                        $queue.show();
                                        $statusBar.removeClass('element-invisible');
                                        uploader.refresh();
                                        break;

                                    case 'uploading':
                                        $('#filePicker-2').addClass('element-invisible');
                                        $progress.show();
                                        $upload.text('暂停上传');
                                        break;

                                    case 'paused':
                                        $progress.show();
                                        $upload.text('继续上传');
                                        break;

                                    case 'confirm':
                                        $progress.hide();
                                        $upload.text('开始上传').addClass('disabled');

                                        stats = uploader.getStats();
                                        if (stats.successNum && !stats.uploadFailNum) {
                                            setState('finish');
                                            return;
                                        }
                                        break;
                                    case 'finish':
                                        stats = uploader.getStats();
                                        if (stats.successNum) {
                                            alert('上传成功');
                                        } else {
                                            // 没有成功的图片，重设
                                            state = 'done';
                                            location.reload();
                                        }
                                        break;
                                }

                                updateStatus();
                            }

                            uploader.onUploadProgress = function(file, percentage) {
                                var $li = $('#' + file.id), $percent = $li.find('.progress span');
                                $percent.css('width', percentage * 100 + '%');
                                percentages[file.id][1] = percentage;
                                updateTotalProgress();
                            };

                            uploader.onFileQueued = function(file) {
                                fileCount++;
                                fileSize += file.size;
                                if (fileCount === 1) {
                                    $placeHolder.addClass('element-invisible');
                                    $statusBar.show();
                                }
                                addFile(file);
                                setState('ready');
                                updateTotalProgress();
                            };

                            uploader.onFileDequeued = function(file) {
                                fileCount--;
                                fileSize -= file.size;

                                if (!fileCount) {
                                    setState('pedding');
                                }

                                removeFile(file);
                                updateTotalProgress();

                            };

                            uploader.on('all', function(type) {
                                var stats;
                                switch (type) {
                                    case 'uploadFinished':
                                        setState('confirm');
                                        break;

                                    case 'startUpload':
                                        setState('uploading');
                                        break;

                                    case 'stopUpload':
                                        setState('paused');
                                        break;

                                }
                            });
                            uploader.onError = function(code) {
                                alert('Eroor: ' + code);
                            };
                            $upload.on('click', function() {
                                if ($(this).hasClass('disabled')) {
                                    return false;
                                }
                                if (state === 'ready') {
                                    uploader.upload();
                                } else if (state === 'paused') {
                                    uploader.upload();
                                } else if (state === 'uploading') {
                                    uploader.stop();
                                }
                            });

                            $info.on('click', '.retry', function() {
                                uploader.retry();
                            });

                            $info.on('click', '.ignore', function() {
                                alert('todo');
                            });

                            $upload.addClass('state-' + state);
                            updateTotalProgress();
                        });


                    </script>
</body>
</html>