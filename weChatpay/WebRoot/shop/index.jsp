<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<% String path=request.getContextPath(); String basePath=request.getScheme()+ "://"+request.getServerName()+ ":"+request.getServerPort()+path+ "/"; %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>    
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" />
        <title>微信商城</title>
        
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="touchTouch/touchTouch.css">
        <link rel="stylesheet" href="css/pintuer.css">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script src="js/script.js"></script>
        <script src="js/jquery.js"></script>
        <script src="js/jquery-1.7.1.min.js"></script>
        <script src="touchTouch/touchTouch.jquery.js"></script>
        <script type="text/javascript" src="js/jquery.Spinner.js"></script>
        
        <script type="text/javascript">//参与人数加减
          $(function() {
            $("#d").Spinner();
            $('.thumbs-img').each(function() {
              $(this).children('a').touchTouch();
            });
          });

          //点击图片
          $('.thumbs-img').each(function() {
            9 * $(this).children('a').touchTouch();
          });
		</script>
      </head>
      
      <body>
        <section>
          <banner>
            <img src="img/ban.jpg">
            <yiny></yiny>
          </banner>
          <div class="jindutiao">
            <p>第一期：上海迪士尼门票</p>
            <!--进度条-->
            <progress value="" max=""></progress>
            <div class="canshu">
              <div class="canshu_l">
                <font></font>
                <p>已参与人次</p>
              </div>
              <div class="canshu_z">
                <font></font>
                <p>总需人次</p>
              </div>
              <div class="canshu_r">
                <font></font>
                <p>剩余人次</p>
              </div>
            </div>
          </div>
          <div class="centerq">
            <!--参与人数加减 开始-->
            <div class="center">
              <p>我要参与</p>
              <div id="d" class="Spinner"></div>
              <p>人购买人次越多获得几率越大哦！</p>
            </div>
            <!--参与人数加减 结束-->
            <div class="canyu">
              <p>购买</p>
            </div>
          </div>
          <!--三个切换卡-->
          <div id="cen_right_top">
            <h3 class="active">商品介绍</h3>
            <h3>夺宝记录</h3>
            <h3>用户晒单</h3>
            <!--商品介绍-->
            <div style="display:block" class="tab_show">
              <div class="know">
                <p>您需要知道的"香港迪士尼乐园"</p>
                <ul>
                  <li>
                    <span>特色1</span>&nbsp;&nbsp;迪士尼全球的第十一个主题乐园</li>
                  <li>
                    <span>特色2</span>&nbsp;&nbsp;根据加州迪士尼为蓝本的主题乐园</li>
                  <li>
                    <span>特色3</span>&nbsp;&nbsp;欣赏百老汇式精彩表演</li>
                  <li>
                    <span>特色4</span>&nbsp;&nbsp;畅玩乐趣无穷的动感机动游戏</li></ul>
                <p>香港迪士尼乐园简介</p>
                <ul>
                  <li>香港迪士尼乐园度假区位于香港大屿山，于2005年9月开幕，为宾客提供奇妙迪士尼体验。</li>
                  <li>香港迪士尼乐园分七大主题园区，他们是美国小镇大街、幻想世界、明日世界、探险世界、2011年11月开幕的反斗奇兵大本营、2012年7月开幕的灰熊山谷以及2013年5月开幕的迷离庄园。代表不同年代不同时空的迪士尼体验。</li></ul>
                <div class="jianjie">
                  <h4>&middot;香港迪士尼乐园10周年庆典多个全新精彩演出的体验</h4>
                  <font>香港迪士尼乐园踏入10周年，整个乐园将化身成为耳目一新的华丽大舞台；全新的音乐剧“迪士尼魔法书房”、崭新的影像投影展现“星梦奇缘”烟花表演、全新座落于幻想世界的“童话园林”，以及多款精美礼品、美食和更多精彩活动，诚邀您和挚爱一起投入香港迪士尼乐园10周年庆典，缔造Happily Ever After的时光。</font></div>
                <div class="jianjie">
                  <h4>&middot;全新百老汇式音乐剧迪士尼魔法书房</h4>
                  <font>万众期待的全新音乐剧“迪士尼魔法书房”是特别为香港而创作、乐园历年最大型的娱乐表演制作，由米奇老鼠和高飞带领宾客穿梭7个迪士尼故事，透过华丽表演与崭新舞台技术，投入一个新层次的奇妙旅程。不论音乐、编舞、服饰及舞台设计等都融入了经典及现代元素。
                    <br/>“迪士尼魔法书房”长达28分钟，将于幻想世界的迪士尼故事剧场上演，故事发生于一间魔法书房内，米奇老鼠与高飞好奇打开魔法书，因而令人见人爱的雪人小白从故事书中跌了出来。为了在小白溶化之前带他回到自己的故事，米奇老鼠、高飞及小白踏上奇妙的历险旅程，穿梭于7个迪士尼故事，包括：《小泰山》、《小鱼仙》、《魔发奇缘》、《勇敢传说之幻险森林》、《阿拉丁》、《公主与青蛙》及《魔雪奇缘》。
                    <br/>而为庆祝乐园10周年特别创作的主题歌曲《Happily Ever After》更会压轴登场，为华丽的演出带来圆满的结局。</font>
                  <div class="anli">
                    <img class="left" style="float:left;" src="img/dishini.jpg">
                    <img class="right" style="float:right" src="img/aa.jpg"></div>
                </div>
                <div class="jianjie">
                  <h4>&middot;全新百老汇式音乐剧迪士尼魔法书房</h4>
                  <font>万众期待的全新音乐剧“迪士尼魔法书房”是特别为香港而创作、乐园历年最大型的娱乐表演制作，由米奇老鼠和高飞带领宾客穿梭7个迪士尼故事，透过华丽表演与崭新舞台技术，投入一个新层次的奇妙旅程。不论音乐、编舞、服饰及舞台设计等都融入了经典及现代元素。
                    <br/>“迪士尼魔法书房”长达28分钟，将于幻想世界的迪士尼故事剧场上演，故事发生于一间魔法书房内，米奇老鼠与高飞好奇打开魔法书，因而令人见人爱的雪人小白从故事书中跌了出来。为了在小白溶化之前带他回到自己的故事，米奇老鼠、高飞及小白踏上奇妙的历险旅程，穿梭于7个迪士尼故事，包括：《小泰山》、《小鱼仙》、《魔发奇缘》、《勇敢传说之幻险森林》、《阿拉丁》、《公主与青蛙》及《魔雪奇缘》。
                    <br/>而为庆祝乐园10周年特别创作的主题歌曲《Happily Ever After》更会压轴登场，为华丽的演出带来圆满的结局。</font>
                  <div class="anli">
                    <img class="left" style="float:left;" src="img/dishini.jpg">
                    <img class="right" style="float:right" src="img/aa.jpg"></div>
                </div>
              </div>
            </div>
            <!--夺宝记录-->
            <div class="tab_show">
              <div class="knowq"></div>
            </div>
            <!--用户晒图-->
            <div class="tab_show">
              <div class="know">
               	<div class="tupp" style="width:70%;margin:100px auto 50px auto;">
                	<img src="img/dengdai.png" style="width:100%;">
                </div>
            </div>
          </div>
        </section>
      </body>
      
      <script type="text/javascript">
      //初始化调用方法
      $(function() {
          var openId = '<%=session.getAttribute("openId")%>';
          var headimgurl = '<%=session.getAttribute("headimgurl")%>';
          var nickname = '<%=session.getAttribute("nickname")%>';
          $.ajax({
          	//请求接口获取个人购买记录，返回code开奖编码，timeStr购买时间，status是否中奖（0未开奖，1已中奖，2未中奖）
            url: "http://你的域名/weChatpay/recodeServlet?flag=1&openId=" + openId,
            type: "get",
            dataType: "json",
            success: function(data) {
              //将开奖编码循环写到页面上
              $.each(data,
              function(i, list) {
                var str = "";
                $.each(list,
                function(j, item) {
                  //status=1表示该编码中奖，加上中奖啦图片	
                  if (item.status == 1) {
                    str += "<div class=\"know\">" + "<div class=\"know_l\">" + "<div class=\"touxiang\"><img src=" + headimgurl + "></div><font>" + nickname + "</font></div>" + "<div class=\"know_z\"><font>" + item.code + "</font></div>" + "<div class=\"know_r\"><font id=\"riqi\">" + item.timeStr + "<div class=\"zhang\"><img src=\"img/zhongjiangla.png\"></div></font></div>" + "</div>";
                  } else {
                    str += "<div class=\"know\">" + "<div class=\"know_l\">" + "<div class=\"touxiang\"><img src=" + headimgurl + "></div><font>" + nickname + "</font></div>" + "<div class=\"know_z\"><font>" + item.code + "</font></div>" + "<div class=\"know_r\"><font id=\"riqi\">" + item.timeStr + "</font></div>" + "</div>";

                  }
                });

                $(".tab_show .knowq").html(str);

              });

            }

          });

        });
      </script>
      
      <script type="text/javascript">
      //点击购买按钮调用方法
      $(".canyu").click(function() {
          //获取进度条元素
          var progress = $("progress");
          //进度条不满10人时执行下面代码，若等于10为待开奖状态，则什么也不执行
          if (progress.val() != 10) {

            var openId = '<%=session.getAttribute("openId")%>';
            //num购买数量，money总金额（单位分）
            var num = $(".Amount").val();
            var money = num * 100;
            //防止并发超卖，购买前先增加订单数量判断是否小于10，支付成功后再发放中奖码，若支付失败再减去相应订单数量
            $.ajax({
              url: "http://你的域名/weChatpay/recodeServlet?flag=3&num=" + num,
              type: "get",
              dataType: "json",
              success: function(data) {
              	//error=1 增加订单后总订单数小于等于10
                if (data.error == 1) {
                  //调用支付接口
                  $.ajax({
                    url:"http://你的域名/weChatpay/topayServlet?openId="+openId+"&money="+money,
                    type: "get",
                    dataType: "json",
                    success: function(json) {
                      WeixinJSBridge.invoke('getBrandWCPayRequest', {
                        "appId": json.appId,
                        "timeStamp": json.timeStamp,
                        "nonceStr": json.nonceStr,
                        "package": json.packages,
                        "signType": "MD5",
                        "paySign": json.sign
                      },
                      //调起微信支付成功
                      function(res) {
                        WeixinJSBridge.log(res.err_msg);
                        if (res.err_msg == "get_brand_wcpay_request:ok") {
                          //alert("微信支付成功!");
                          //跳转到生成开奖编码的servlet
                          window.location.href = "http://你的域名/weChatpay/resultServlet?openId=" + openId + "&num=" + num;
                          //	            		}else if(res.err_msg == "get_brand_wcpay_request:cancel"){  
                          //alert("用户取消支付!");  
                        } else {
                          //支付失败或取消，恢复到原来的订单量
                          $.ajax({
                            url: "http://你的域名/weChatpay/recodeServlet?flag=4&num=" + num,
                            type: "get",
                            dataType: "json"
                          });
                        }
                      });
                    },
                    //调起微信支付失败，恢复到原来的订单量
                    error:function(){
                    	$.ajax({
                            url: "http://你的域名/weChatpay/recodeServlet?flag=4&num=" + num,
                            type: "get",
                            dataType: "json"
                         });
                    }
                  });
                //error=0 表示增加订单后总订单数大于10
                } else {
                  alert("库存不足");
                }

              }

            });

          }

        });
    </script>   
    </html>