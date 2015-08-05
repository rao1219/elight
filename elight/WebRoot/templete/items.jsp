<!DOCTYPE html>
<%@page import="jspservlet.vo.Product"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>item-information -- Elight</title>
    <style type="text/css">
		/* css 重置 */
		.slideBox11{width:100%; height:545px; overflow:hidden; position:relative;}
		.slideBox11 .bd{position:relative; overflow:hidden; height:100%;z-index:0;}
		.slideBox11 .bd ul{position: absolute;}
		.slideBox11 .bd li{overflow:auto; height:545px; float:left; width:309px;}
		.slideBox11 .bd img{width:100%;}
		/* 下面是前/后按钮代码，如果不需要删除即可 */
		.slideBox11 .prev,
		.slideBox11 .next{position:absolute; left:2%; top:50%; margin-top:-25px; display:block; width:32px; height:40px; background:url(style/images/goods-direction.png) -110px 5px no-repeat #000; filter:alpha(opacity=10);opacity:0.1;}
		.slideBox11 .next{left:auto; right:2%; background-position:8px 5px;}
		.slideBox11 .prev:hover,
		.slideBox11 .next:hover{filter:alpha(opacity=50);opacity:0.5;}
		.slideBox11 .prevStop{display:none;}
		.slideBox11 .nextStop{display:none;}
	</style>
   
<%@ include file="header.jsp" %>

    <%
    
    Product product = (Product) (session.getAttribute("productContent"));
   // System.out.println(product.getType());
    //System.out.println(product.getAdress());
    //System.out.println(product.getPrice());
    //System.out.println(product.getSeller());
   System.out.println("product-----------ok");
   System.out.println(product.getType());
   System.out.println(product.getPrice());
   System.out.println(product.getAddress());
   
   System.out.println(session.getAttribute("type"));
   
    
     %>
    <div class="cover-page-details fl wfs bcf2">
        <div class="cover-page-wrapper">
            <div class="place fz12" style="padding-left:20px;">
    <a href=".">Homepage</a> <code>&gt;</code> <a href="#">Product</a> <code>&gt;</code> <%=product.getDescription()%> </div>
            
            <div class="details fl wfs" style="position:relative;">
            	<div style="right:220px;bottom:50px; position:absolute;">
                	<img onClick="collectgoods(500)" class="shoucang" style="cursor:pointer;" />
                </div>
                <div class="bdsharebuttonbox" data-tag="share_1" style="right:100px;bottom:50px;*bottom: 55px; position:absolute;">
                    <a class="bds_tsina" data-cmd="tsina"></a>
                    <a class="bds_tqq" data-cmd="tqq"></a>
                    <a class="bds_more" data-cmd="more"></a>
                    <a class="bds_count" data-cmd="count"></a>
                </div>
                      <div class="left fl">
        <span class="up-down-btn j-up-down-btn up-btn"></span>
        <div class="canvas">
            <ul class="canvas-container j-canvas-container" style="top:0;">
                       <li class="canvas-container-li j-canvas-container-li now">
                        <img src="upload/item1.jpg" title="图片描述" />
                      </li>
                       
                       <li class="canvas-container-li j-canvas-container-li">
                        <img src="/elight/style/images/2.gif" title="图片描述" />
                      </li>
                      <li class="canvas-container-li j-canvas-container-li">
                        <img src="/elight/style/images/3.gif" title="图片描述" />
                      </li>
                                                                    </ul>
        </div>
        <span class="up-down-btn j-up-down-btn down-btn down-icon"></span>
    </div>
    <div class="mid fl">
        <div class="mid-container fl">
            <div class="j-details-mid-item details-mid-item" style="display:block;">
                <img src="upload/item1.jpg" jqimg="upload/item1.jpg"  alt="">
            </div>
        </div>
    </div>
    
    <script>
    function checkLogin()
    {
    	var id = '<%=session.getAttribute("username") %>';
    	if(id=='null')
    	{
    		alert("You haven't login! Please login!");
    		return false;
    	}
    	else
    	{
    		//alert("Succeed!"+id);
    		return true;
    	}
    }
    </script>
                <form action="javascript:addToCart(500)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
                <input style="display:none" name="number" type="text" id="number" value="1" size="4" onblur="changePrice()" />
                <div class="right fr">
                    
                                            <div class="discount-msg">
                            <h3><%=product.getDescription()%> </h3>
                        </div>
                                                <div class="discount-msg-two" style="padding-bottom: 10px;">
                            <p class="price" id="ECS_GOODS_AMOUNT"><%=product.getPrice()%> yuan </p>(extra:10 yuan)
                        </div>
                        Porduct: E-lamp-<%=product.getType() %><br>          
                      
                    City: <%=product.getAddress() %>  <br>
                    Contract: <%=product.getSeller() %><br> tel:<%=product.getTelephone() %>
                    </p>
                    <p class="make fl wfs">
                    <a class="make-cart fl" href="/elight/purchase.jsp" onClick="return checkLogin()">Buy now	</a><br /><br /><br /><br />
                    <a  href="/elight/CollectionServlet?type=<%=product.getType() %>" onClick="return checkLogin()"><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt="">&nbsp;&nbsp;Add to collection 	</a>
                                                                                                                             
                                            </p>
                    <div class="offer j-offer">
                        <span class="offer-give">P</span>
                        <span class="offer-fold">C</span>
                                                <p class="offer-item offer-give j-offer-item"><em></em> Extra credit since you purchase more! </p>
                            <p class="offer-item offer-fold j-offer-item">
                            <em></em>You can buy one get one free if you win a prize!</p>

                                            </div>
                </div>
            </div>
            </form>
            
            
              	    <form name="m_goods_1" method="post" action="" onSubmit="return false;" class="clearfix">
    <div class="package fl wfs">
        <h4 class="fl wfs">Seller information  -  BUPT Cooperation Telecommunication Engineering</h4>
       Credit Values  <img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""> 52  &nbsp;&nbsp; scores: 72  &nbsp;&nbsp; Certification: BUPT &nbsp;&nbsp; Location: <%=product.getAddress() %>
    </div>
    </form>
                
            
            <div class="content fl wfs" >
                <div class="content-icons fl wfs" style="position:relative;">
                	<div class="tips" style="left:0px;width:88px;"></div>
                	<ul class="mainLeftNav">
                    	<li class="cur">Description</li>
                        <li>Comments</li>
                        <li>Remark</li>
                    </ul>
                </div>
                
                <div class="content-item j-content-item content-package fl wfs" style="display:block;">
                    <dl class="content-item-dl fl wfs">
                        <dt>Product</dt>
                        <dd>Type: <%=product.getType() %></dd>
                        <dd>Price: <%=product.getPrice() %></dd>
                        <dd>Views:1144</dd>
                        <dd>Seller: <%=product.getSeller() %></dd>
                        <dd>Certification: BUPT</dd>
                                                                        </dl>
                    <div class="desc fl wfs" style="margin-top:20px;">
                                                
                                                    
                        <p><br/></p><h6><span style="font-size: 14px;">
<%=product.getDescription() %></span></h6><p><br/></p>
   Our lamp uses the high-level technology in this field. It has some unique characteristics which the other products don't have. One of them is that our lamp is the smart lamp which you can't find the same ones. It has 2 modes, day or night, you can change it by yourself or it can change automatically. Also, you have no need to switch on/off, our lamp can be intelligence to know if you are approaching or not to decide whether to turn on/off. Obviously, it has the beautiful shape which designed by our famous designers. It's a pretty nice choice for customers to choose and use.                        <br/ ><br/ ><br/ >
                    <p style="text-align: center;"><img src="/elight/style/images/light.jpg" title="产品描述图片" /></p>                    </div>
                        
		<script>
			$(".list-paddingleft-2").append($(".list-paddingleft-2").html());
			var canvas_width	= 309;     //画布宽度
		    var img_nums        = $(".list-paddingleft-2 li").length/2;
			var l_now;             //用来存储大图滚动的参数
			var handle_select	= '.prev,.next'; //左右按钮选择器
			var reg = /next/;
			
			$(".list-paddingleft-2").css('width',img_nums*canvas_width*2+"px").css('left',-img_nums*canvas_width+"px");
			var SlideMovie = function(obj)
			{
			  	var l = parseInt($(".list-paddingleft-2").css('left'));
			    //防止客户连续快速点击
			    if(l%canvas_width != 0) return;
		        //判断当前是否是右测按钮，还是测的按钮或者是自动滑动
			    if(typeof(obj) == "undefined" || reg.test(obj.attr("class")))
			    {
			       l_now = l - canvas_width;
			    }else{
			       l_now = l + canvas_width;
			    }
			    //$(".j-icons span").eq((((-l_now)/canvas_width)%img_nums)).addClass('now').siblings('span').removeClass('now');
				$(".list-paddingleft-2").animate({left:l_now+'px'},'normal',function(){
					if(l_now==0){
						$(".list-paddingleft-2").css("left",-canvas_width*img_nums+"px");
					}
				    if(l_now == -canvas_width*img_nums*2+canvas_width){
						$(".list-paddingleft-2").css("left",-canvas_width*(img_nums-1)+"px");
					}
				});
			}
			// 左右按钮点击效果
		    $(handle_select).click(function(){
				var obj = $(this);
				SlideMovie(obj);
			});
</script>
                        
                </div>
                
                
                <div class="content-item j-content-item fl wfs" style="display:none;">
                    <div class="content-item-comments fl wfs">
                        <script type="text/javascript" src="style/js/transport.js"></script>
<div id="ECS_COMMENT"> <ul class="fl wfs">
                        <li class="comment-item">
                <p class="name">
                    <span>WIND</span>
                </p>
                <div class="msg">
                    <p class="fl wfs">
                        <span class="stars"><i class="star" style="width:100px;"></i></span>
                        <b class="scores"><i class="score">5</i>score</b>
                        <span class="evaluation-txt"></span>
                    </p>
                    <p class="testimonials">
                      This lamp is wonderful and I have no worry to forget whether I turn it on or off. It saves the trouble .                 </p>
                                                        </div>
                <span class="date">2014-10-22 09:34:31</span>
            </li>
                    <li class="comment-item">
                <p class="name">
                    <span>test100</span>
                </p>
                <div class="msg">
                    <p class="fl wfs">
                        <span class="stars"><i class="star" style="width:100px;"></i></span>
                        <b class="scores"><i class="score">5</i>score</b>
                        <span class="evaluation-txt"></span>
                    </p>
                    <p class="testimonials">
                      I bought for my child and my child likes it so much ,it has many types for us to choose . I choose the superhero series.                   </p>
                                    </div>
                <span class="date">2014-10-17 14:04:00</span>
            </li>
                    <li class="comment-item">
                <p class="name">
                    <span>test0001</span>
                </p>
                <div class="msg">
                    <p class="fl wfs">
                        <span class="stars"><i class="star" style="width:80px;"></i></span>
                        <b class="scores"><i class="score">4</i>score</b>
                        <span class="evaluation-txt"></span>
                    </p>
                    <p class="testimonials">
                       What I want to say is this lamp is the most intelligent lamp I have ever used. The two modes are very convenience.                 </p>
                                                        </div>
                <span class="date">2014-10-16 14:07:59</span>
            </li>
                </ul>


</div>
                    </div>
                </div>
                
                
                <div class="content-item j-content-item fl wfs" style="display:none;height: 250px;">
                    <h2>Remark......</h2>
                </div>
                
            </div>
            
        </div>
    </div>
     <div class="cover-page-index fl wfs bcf2">
        <div class="cover-page-wrapper">
 
<%@ include file="footer.jsp"%>

<!--[if IE 6]> 
<script src="style/js/ie6-tips.js"></script>
<![endif]-->
    <script type='text/javascript' src='style/js/jquery.json.js'></script>
    <script type='text/javascript' src='style/js/common2.js'></script>
    <script type='text/javascript' src='style/js/transport2.js'></script>
    <script src="style/js/slide-common.js"></script>
    <script>
		$(document).ready(function(){
			mainleftnav();
		});
		
		function mainleftnav(){
			var left=0,width=0,obj=$(".tips");
			$(".mainLeftNav").find("li").each(function(){
				if($(this).hasClass("cur")){
					left=$(this).position().left;
					width=$(this).outerWidth();
					setTimeout(function(){
						obj.stop(true,false).animate({left:left,width:width});
					},500);
					
				}
				$(this).hover(function(){
					var l=$(this).position().left,w=$(this).outerWidth();
					obj.stop(true,false).animate({left:l,width:w});
				},function(){
					obj.stop(true,false).animate({left:left,width:width});
				});
			});
		}
		function comment_location()
		{
			$(".content-icons ul li").removeClass("cur").eq(1).addClass("cur");
            $(".j-content-item").eq(1).show().siblings(".j-content-item").hide();
			var top= ($(".content").offset().top-48)+'px';
			$('html,body').animate({scrollTop: top}, "slow");
			mainleftnav();
		}
		$('.shoucang').hover(
			  function () {
				$(this).attr("src","style/images/shoucang2.png");
			  },
			  function () {
				$(this).attr("src","style/images/shoucang.png");
			  }
		 );
		$(".stars-grey").click(function(e){
			var starsnum = Math.ceil((e.pageX - $(this).offset().left)/20)
			$(".starts-red").css("width",starsnum*20);
  			$(".starsnum").text(starsnum +'分' );
			$("input[name='comment_rank']").val(starsnum);
		});
        // 点击切换效果
        $(".content-icons ul li").click(function(){
            $(this).addClass("cur").siblings("li").removeClass("cur");
            $(".j-content-item").eq($(this).index()).show().siblings(".j-content-item").hide();
			mainleftnav();
        });
        $(".j-offer span").hover(function(){
            $(".j-offer-item").eq($(this).index()).show().siblings(".j-offer-item").hide();
        });
        // 左侧小图上下切换和滑动
        $(".j-canvas-container-li").click(function(){
            $(this).addClass("now").siblings(".j-canvas-container-li").removeClass("now");
            $(".j-details-mid-item").eq($(this).index()).show().siblings(".j-details-mid-item").hide();
        });
        $(".j-up-down-btn").click(function(){
            Slide.SlideParams = {
                l_width  : 75,                         //每一个子元素的宽度
                l_area   : 375,                        //展示的舞台的宽度
                l_nums   : 5,                          //舞台可以展示的元素的个数
                l_totals : $(".canvas-container-li").length,  //元素的总数量
                l_map    : ".j-canvas-container",            //移动的画布
                l_now    : 0,                          //用来存储大图滚动的参数
                reg      : /down-icon/,                       //用来判断是上下哪一个按钮点击
                l_path   : "top"
            };
            var obj = $(this);
            Slide.SlideMovie(obj);
        });
        //package-with movie
        $(".j-package-btn").click(function(){
            Slide.SlideParams = {
                l_width  : 190,                             //每一个子元素的宽度
                l_area   : 760,                             //展示的舞台的宽度
                l_nums   : 4,                               //舞台可以展示的元素的个数
                l_totals : $(".j-width-item").length,       //元素的总数量
                l_map    : ".j-package-container-items",    //移动的画布
                l_now    : 0,                               //用来存储大图滚动的参数
                reg      : /package-btn-right/,              //用来判断是左右哪一个按钮点击
                l_path   : "left"
            };
            var obj = $(this);
            Slide.SlideMovie(obj);
        });
		
		
    </script>
    
<script>

window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{"bdSize":16}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
</script>
</body>
</html>