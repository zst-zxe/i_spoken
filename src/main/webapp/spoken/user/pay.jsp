<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/8/2
  Time: 4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
    <title>i口语-支付</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Tabs Payment Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <link href="../../css/templates/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="../../css/templates/creditly.css" type="text/css" media="all" />
    <link rel="stylesheet" href="../../css/templates/easy-responsive-tabs.css">
    <script src="../../js/jquery.min.js"></script>
    <!-- font-awesome-icons -->
    <link href="../../css/templates/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="//fonts.googleapis.com/css?family=Mirza:400,500,600,700&amp;subset=arabic,latin-ext" rel="stylesheet">
</head>
<body>
<div class="main">
    <h1>金币充值</h1>
    <div class="w3_agile_main_grids">
        <div class="w3layouts_main_grid_left">
            <div class="agileinfo_main_grid_left_grid">
                <h3>充值</h3>
                <ul>
                    <li>用户：</li>
                    <li><input name="username" type="text" value="${user.username}" id="name"></li>
                </ul>
                <ul>
                    <li>设置金额：</li>
                    <li><input name="fundsnum" type="text" value="0.0" id="fundsnum"></li>
                </ul>
                <ul>
                    <li>日期：</li>
                    <li><input name="fundscreatetime" type="date" id="time"/></li>
                </ul>

            </div>
            <!--<div class="agile_amount">
                <h3>Total Price</h3>
                <h4>523.63 GBP</h4>
                <p>Price includes all taxes</p>
            </div>-->
        </div>
        <div class="agileits_main_grid_right">
            <div class="wthree_payment_grid">
                <h2>Payment Method</h2>
                <div id="horizontalTab">
                    <ul class="resp-tabs-list">
                        <li><img src="../../img/1.jpg" alt=" "  width="100px" height="60px"/></li>
                        <li><img src="../../img/2.jpg" alt=" " width="100px" height="60px"/></li>
                    </ul>
                    <div class="resp-tabs-container">
                        <div class="agileits_w3layouts_tab1">
                            <form action="#" method="post" class="creditly-card-form agileinfo_form">
                                <section class="creditly-wrapper wthree, w3_agileits_wrapper">
                                    <div class="credit-card-wrapper">
                                        <div class="first-row form-group">
                                            <div class="controls">
                                                <label class="control-label">银行卡绑定人姓名</label>
                                                <input class="billing-address-name form-control" type="text" name="name" placeholder="John Smith">
                                            </div>
                                            <div class="w3_agileits_card_number_grids">
                                                <div class="w3_agileits_card_number_grid_left">
                                                    <div class="controls">
                                                        <label class="control-label">卡号</label>
                                                        <input class="number credit-card-number form-control" type="text" name="number"
                                                               inputmode="numeric" autocomplete="cc-number" autocompletetype="cc-number" x-autocompletetype="cc-number"
                                                               placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;">
                                                    </div>
                                                </div>
                                                <div class="w3_agileits_card_number_grid_right">
                                                    <div class="controls">
                                                        <label class="control-label">支付密码</label>
                                                        <input class="security-code form-control"Â·
                                                               inputmode="numeric"
                                                               type="text" name="security-code"
                                                               placeholder="&#149;&#149;&#149;">
                                                    </div>
                                                </div>
                                                <div class="clear"> </div>
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">交易日期</label>
                                                <input class="expiration-month-and-year form-control" type="text" name="expiration-month-and-year" placeholder="MM / YY">
                                            </div>
                                        </div>
                                        <button class="submit" onclick="return chongzhi();"><span>充值.<i class="fa fa-long-arrow-right" aria-hidden="true"></i></span></button>
                                    </div>
                                </section>
                            </form>
                        </div>
                        <div class="agileits_w3layouts_tab2">
                            <h3>扫描下方二维码付款</h3>
                            <div >
                                <img src="../../img/3.jpg" width="600px" height="400px"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"> </div>
    </div>
    <div class="agileits_copyright">
        <p>© 2019 Tabs Payment Form. All rights reserved</p>
    </div>
</div>
<!-- credit-card -->
<script type="text/javascript" src="../../js/creditly.js"></script>
<script type="text/javascript">
    $(function() {
        var creditly = Creditly.initialize(
            '.creditly-wrapper .expiration-month-and-year',
            '.creditly-wrapper .credit-card-number',
            '.creditly-wrapper .security-code',
            '.creditly-wrapper .card-type');

        $(".creditly-card-form .submit").click(function(e) {
            e.preventDefault();
            var output = creditly.validate();
            if (output) {
                // Your validated credit card output
                console.log(output);
            }
        });
    });

    function chongzhi() {
        var name = $('#name').val();
        var num = $('#fundsnum').val();

        alert("====name==="+name);
        alert("====num==="+num);
        if(name!=null && num!=null)
        {
            window.location.href="${pageContext.request.contextPath}/funds/addFunds.action?username="+
                name+"&fundsnum="+num+"&time="+$('#time').val();
            return true;
        }
        else return false;

    }
</script>
<!-- //credit-card -->
<!-- tabs -->
<script src="../../js/easy-responsive-tabs.js"></script>
<script>
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true,   // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#tabInfo');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
    });
</script>
<!-- //tabs -->

</body>
</html>