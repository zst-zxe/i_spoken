<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/16
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>i口语-首页</title>
    <link rel="stylesheet" type="text/css" href="../../css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../../css/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../../css/demo/demo.css">
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>

    <link rel="stylesheet" type="text/css" href="../../css/myself/style.css">
    <link href="../../css/myself/style1.css" rel="stylesheet" type="text/css" media="all" />
    <script src="../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.mixitup.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var filterList = {

                init: function () {


                    $('#portfoliolist').mixitup({
                        targetSelector: '.portfolio',
                        filterSelector: '.filter',
                        effects: ['fade'],
                        easing: 'snap',
                        onMixEnd: filterList.hoverEffect()
                    });

                },

                hoverEffect: function () {
                    $('#portfoliolist .portfolio').hover(
                        function () {
                            $(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
                            $(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');
                        },
                        function () {
                            $(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
                            $(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');
                        }
                    );

                }

            };

            // Run the show!
            filterList.init();


        });
    </script>
    <!-- start top_js_button -->
    <script type="text/javascript" src="../../js/move-top.js"></script>
    <script type="text/javascript" src="../../js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
        });
    </script>
    <script>
        function login() {
            $(".tologin").css("background","red");
        }
    </script>
</head>
<body>
<!-- start header -->

<header>

    <div class="header_btm" style="width: auto;height:140px" >
        <div class="header_btm">
            <div class="wrap">
                <div class="header_sub">
                    <div class="h_menu">
                        <div style="background:transparent;position:absolute;top:25px;right: 30px;background-color: rgba(197,227,255,0.15)">
                            <div align="center">
                                <c:if test="${user.ismember==1}">
                                <img src="img/hg.png" alt="会员" width="30px" height="20px"/>
                                </c:if>
                            </div>
                            <div align="center">
                                <c:if test="${user.picturename==null}">
                                <a href="#">
                                    <img src="img/5.PNG" alt="用户头像" height="60px"/>
                                </a>
                                </c:if>
                                <c:if test="${user.picturename!=null}">
                                    <a href="#">
                                        <img src="/pic/${user.picturename}" alt="用户头像" height="60px"/>
                                    </a>
                                </c:if>
                            </div>


                            <div style="text-align:center;">

                                <span><a href="#" class="easyui-menubutton" data-options="menu:'#mm2'">${user.username}</a></span>
                                <div id="mm2" style="width:100px;">
                                    <div><a href="${pageContext.request.contextPath}/user/information.action?name=${user.username}"  target="_blank" style="text-decoration: none">我的信息</a></div>
                                    <div><a href="${pageContext.request.contextPath}/funds/funds.action?userid=${user.userid}" target="_bank" style="text-decoration: none">金币:${user.userfunds}</a></div>
                                    <c:if test="${user.ismember==1}">
                                        <div><a href="#" target="_bank" style="text-decoration: none">会员特权</a></div>
                                    </c:if>
                                    <div><a href="#" target="_bank" style="text-decoration: none">我的订单</a></div>
                                    <div><a href="#" target="_bank" style="text-decoration: none">成为会员</a></div>
                                </div>
                                <p style="font-size: 14px">
                                <a style="display: inline;font-size: 7px;" href="${pageContext.request.contextPath}/init/zhuxiao.jsp">注销登录</a>
                                </p>

                            </div>

                        </div>

                        <div class="clear"></div>
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <HR style="margin-top:5px" width="100%" color=#987cb9 SIZE=2>
</header>

<div class="banner_x center">

    <a href="#" target="_blank"><div class=""></div></a>
    <a href=""><div class=""></div></a>
    <div class="nav fl" style="float: right;top:auto;margin-top:12px ;margin-bottom: 8px">
        <ul>
            <li><a href="#" target="_self">话题</a></li>
            <li>|</li>
            <li><a href="${pageContext.request.contextPath}/spoken/user/community.jsp" >社区</a></li>
            <li>|</li>
            <li><a href="${pageContext.request.contextPath}/spoken/user/collection.jsp">收藏</a></li>
            <li>|</li>
            <li><a href="${pageContext.request.contextPath}/spoken/user/course.jsp">课程</a></li>
            <li>|</li>
            <li><a href="${pageContext.request.contextPath}/spoken/init/paycar.jsp">购物车</a></li>
        </ul>
        <div class="search fr" >
            <form action="" method="post">
                <div class="<!--text fl-->">
                    <!--<input type="text" class="shuru"  placeholder="">-->
                </div>
                <div class="<!--submit fl-->">
                    <!--<input type="submit" class="sousuo" value="搜索"/>-->
                </div>
                <div class="clear"></div>
            </form>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!-- end banner_x -->

<!-- start banner_y -->
<div class="banner_y center">
    <div class="nav">
        <ul>
            <li>
                <a href="" style="width: 274px;height: 40px">英语</a>

                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yingshi.jpg" alt=""></div>
                                    <span class="fl">影视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/dongman.jpg" alt=""></div>
                                    <span class="fl">动漫</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shenghuo.jpg" alt=""></div>
                                    <span class="fl">日常交际</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/mingxing.jpg" alt=""></div>
                                    <span class="fl">明星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/ruanjian.jpg" alt=""></div>
                                    <span class="fl">软件</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shige.jpg" alt=""></div>
                                    <span class="fl">诗歌</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yinyue.png" alt=""></div>
                                    <span class="fl">音乐</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/xiaoshuo.jpg" alt=""></div>
                                    <span class="fl">小说</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/youxi.jpg" alt="游戏"></div>
                                    <span class="fl">游戏</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/chongwu.jpg" alt=""></div>
                                    <span class="fl">宠物</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="" style="width: 274px;height: 40px">日语</a>
                <a href=""></a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="<%--${pageContext.request.contextPath}/spoken/init/jump.jsp--%>">
                                    <div class="img fl"><img src="../../img/yingshi.jpg" alt=""></div>
                                    <span class="fl">影视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/dongman.jpg" alt=""></div>
                                    <span class="fl">动漫</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shenghuo.jpg" alt=""></div>
                                    <span class="fl">日常交际</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/mingxing.jpg" alt=""></div>
                                    <span class="fl">明星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/ruanjian.jpg" alt=""></div>
                                    <span class="fl">软件</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shige.jpg" alt=""></div>
                                    <span class="fl">诗歌</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yinyue.png" alt=""></div>
                                    <span class="fl">音乐</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/xiaoshuo.jpg" alt=""></div>
                                    <span class="fl">小说</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/youxi.jpg" alt="游戏"></div>
                                    <span class="fl">游戏</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/chongwu.jpg" alt=""></div>
                                    <span class="fl">宠物</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="" style="width: 274px;height: 40px">德语</a>
                <a href=""></a>
                <a href=""></a>

                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yingshi.jpg" alt=""></div>
                                    <span class="fl">影视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/dongman.jpg" alt=""></div>
                                    <span class="fl">动漫</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shenghuo.jpg" alt=""></div>
                                    <span class="fl">日常交际</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/mingxing.jpg" alt=""></div>
                                    <span class="fl">明星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/ruanjian.jpg" alt=""></div>
                                    <span class="fl">软件</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shige.jpg" alt=""></div>
                                    <span class="fl">诗歌</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yinyue.png" alt=""></div>
                                    <span class="fl">音乐</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/xiaoshuo.jpg" alt=""></div>
                                    <span class="fl">小说</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp"><div class="img fl"><img src=../../img/youxi.jpg></div>
                                <span class="fl">游戏</span>
                                <div class="clear"></div>
                            </a></div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/chongwu.jpg" alt=""></div>
                                    <span class="fl">宠物</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="" style="width: 274px;height: 40px">粤语</a>
                <a href=""></a>
                <a href=""></a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yingshi.jpg" alt=""></div>
                                    <span class="fl">影视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/dongman.jpg" alt=""></div>
                                    <span class="fl">动漫</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shenghuo.jpg" alt=""></div>
                                    <span class="fl">日常交际</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/mingxing.jpg" alt=""></div>
                                    <span class="fl">明星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/ruanjian.jpg" alt=""></div>
                                    <span class="fl">软件</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shige.jpg" alt=""></div>
                                    <span class="fl">诗歌</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yinyue.png" alt=""></div>
                                    <span class="fl">音乐</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp"><div class="img fl"><img src="../../img/youxi.jpg"></div>
                                <span class="fl">游戏</span>
                                <div class="clear"></div>
                            </a></div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/xiaoshuo.jpg" alt=""></div>
                                    <span class="fl">小说</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/chongwu.jpg" alt=""></div>
                                    <span class="fl">宠物</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="" style="width: 274px;height: 40px">法语</a>
                <a href=""></a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yingshi.jpg" alt=""></div>
                                    <span class="fl">影视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/dongman.jpg" alt=""></div>
                                    <span class="fl">动漫</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shenghuo.jpg" alt=""></div>
                                    <span class="fl">日常交际</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/mingxing.jpg" alt=""></div>
                                    <span class="fl">明星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/ruanjian.jpg" alt=""></div>
                                    <span class="fl">软件</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shige.jpg" alt=""></div>
                                    <span class="fl">诗歌</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yinyue.png" alt=""></div>
                                    <span class="fl">音乐</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                <div class="img fl"><img src="../../img/youxi.jpg" alt=""></div>
                                <span class="fl">游戏</span>
                                <div class="clear"></div></a></div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/xiaoshuo.jpg" alt=""></div>
                                    <span class="fl">小说</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/chongwu.jpg" alt=""></div>
                                    <span class="fl">宠物</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="" style="width: 274px;height: 40px">土耳其语</a>
                <a href=""></a><a href=""></a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yingshi.jpg" alt=""></div>
                                    <span class="fl">影视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/dongman.jpg" alt=""></div>
                                    <span class="fl">动漫</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shenghuo.jpg" alt=""></div>
                                    <span class="fl">日常交际</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/mingxing.jpg" alt=""></div>
                                    <span class="fl">明星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/ruanjian.jpg" alt=""></div>
                                    <span class="fl">软件</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shige.jpg" alt=""></div>
                                    <span class="fl">诗歌</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yinyue.png" alt=""></div>
                                    <span class="fl">音乐</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/youxi.jpg"></div>
                                    <span class="fl">游戏</span>
                                    <div class="clear"></div>
                                </a></div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/xiaoshuo.jpg" alt=""></div>
                                    <span class="fl">小说</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/chongwu.jpg" alt=""></div>
                                    <span class="fl">宠物</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="" style="width: 274px;height: 40px">韩语</a>
                <a href=""></a><a href=""></a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yingshi.jpg" alt=""></div>
                                    <span class="fl">影视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/dongman.jpg" alt=""></div>
                                    <span class="fl">动漫</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shenghuo.jpg" alt=""></div>
                                    <span class="fl">日常交际</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/mingxing.jpg" alt=""></div>
                                    <span class="fl">明星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/ruanjian.jpg" alt=""></div>
                                    <span class="fl">软件</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shige.jpg" alt=""></div>
                                    <span class="fl">诗歌</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yinyue.png" alt=""></div>
                                    <span class="fl">音乐</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                <div class="img fl"><img src="../../img/youxi.jpg"></div>
                                <span class="fl">游戏</span>
                                <div class="clear"></div>
                            </a></div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/xiaoshuo.jpg" alt=""></div>
                                    <span class="fl">小说</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/chongwu.jpg" alt=""></div>
                                    <span class="fl">宠物</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="" style="width: 274px;height: 40px">波兰语</a>
                <a href=""></a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yingshi.jpg" alt=""></div>
                                    <span class="fl">影视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/dongman.jpg" alt=""></div>
                                    <span class="fl">动漫</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shenghuo.jpg" alt=""></div>
                                    <span class="fl">日常交际</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/mingxing.jpg" alt=""></div>
                                    <span class="fl">明星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/ruanjian.jpg" alt=""></div>
                                    <span class="fl">软件</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shige.jpg" alt=""></div>
                                    <span class="fl">诗歌</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yinyue.png" alt=""></div>
                                    <span class="fl">音乐</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/youxi.jpg"></div>
                                    <span class="fl">游戏</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/xiaoshuo.jpg" alt=""></div>
                                    <span class="fl">小说</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/chongwu.jpg" alt=""></div>
                                    <span class="fl">宠物</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>

                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="" style="width: 274px;height: 40px"></a>
                <a href=""></a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yingshi.jpg" alt=""></div>
                                    <span class="fl">影视</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/dongman.jpg" alt=""></div>
                                    <span class="fl">动漫</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shenghuo.jpg" alt=""></div>
                                    <span class="fl">日常交际</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/mingxing.jpg" alt=""></div>
                                    <span class="fl">明星</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/ruanjian.jpg" alt=""></div>
                                    <span class="fl">软件</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/shige.jpg" alt=""></div>
                                    <span class="fl">诗歌</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/yinyue.png" alt=""></div>
                                    <span class="fl">音乐</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/youxi.jpg"></div>
                                    <span class="fl">游戏</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/xiaoshuo.jpg" alt=""></div>
                                    <span class="fl">小说</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">
                                    <div class="img fl"><img src="../../img/chongwu.jpg" alt=""></div>
                                    <span class="fl">宠物</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="${pageContext.request.contextPath}/spoken/init/jump.jsp">进入</a></div>
                            <div class="clear"></div>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </li>
        </ul>
    </div>

</div>


<!-- end banner -->

<!-- start danpin -->
<div class="danpin center">

    <div class="biaoti center">精品专区</div>
    <div class="main center">
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="teacher.html"><img src="../../img/kouyujiaoshi.png" alt="口语教师"></a></div>
            <div class="pinpai"><a href="">口语教师</a></div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="course.html"><img src="../../img/course.PNG" alt="口语课程"></a></div>
            <div class="pinpai"><a href="">口语课程</a></div>

        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="reading.html"><img src="../../img/reading.png" alt="书籍阅读"></a></div>
            <div class="pinpai"><a href="">书籍阅读</a></div>

        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="practice.html"><img src="../../img/practice.png" alt="口语练习"></a></div>
            <div class="pinpai"><a href="">口语练习</a></div>

        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href="singing.html"><img src="../../img/listenmusic.png" alt=""></a></div>
            <div class="pinpai"><a href="">听歌学口语</a></div>

        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- start footer -->
<div class="footer_bg">
    <div class="wrap">
        <div class="footer">
            <!-- start grids_of_4 -->
            <div class="grids_of_4">
                <div class="grid1_of_4">
                    <h4>未来销售</h4>
                    <ul class="f_nav">
                        <li><a href="">精品课程</a></li>
                        <li><a href="">精品歌曲</a></li>
                        <li><a href="">精品书籍</a></li>

                    </ul>
                </div>
                <div class="grid1_of_4">
                    <h4>我们的教师</h4>
                    <ul class="f_nav">
                        <li><a href="">Bruce</a></li>
                        <li><a href="">Willim</a></li>
                        <li><a href="">Neriman</a></li>

                    </ul>
                </div>
                <div class="grid1_of_4">
                    <h4>即将来临</h4>
                    <ul class="f_nav">
                        <li><a href="">在线客服</a></li>
                        <li><a href="">支持帮助</a></li>
                        <li><a href=""></a></li>

                    </ul>
                </div>
                <div class="grid1_of_4">
                    <h4>友情链接</h4>
                    <ul class="f_nav">
                        <li><a href="https://bbc.enfamily.cn/">BBC在线英语</a></li>
                        <li><a href="http://es.olacio.com">Olacio在线西语</a></li>
                        <li><a href="http://fr.olacio.com">Olacio在线法语</a></li>

                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
<!-- start footer -->
<div class="footer_bg1">
    <div class="wrap">
        <div class="footer">
            <!-- scroll_top_btn -->
            <script type="text/javascript">
                $(document).ready(function() {

                    var defaults = {
                        containerID: 'toTop', // fading element id
                        containerHoverID: 'toTopHover', // fading element hover id
                        scrollSpeed: 1200,
                        easingType: 'linear'
                    };
                    $().UItoTop({ easingType: 'easeOutQuart' });
                });
            </script>
            <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
            <!--end scroll_top_btn -->
        </div>
    </div>
</div>
</body>
</html>