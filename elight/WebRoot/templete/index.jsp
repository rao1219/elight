<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>E-lamp An intelligent lamp brighten your eyes </title>
	<%@ include file="header.jsp"%>

    
    <div class="cover-page-index-slide j-index-slide fl wfs">
        <div class="border">
            <div class="center">
                <div class="relative">
                    <div class="location">
                        <div id="wrap" class="wrap">
                            <div class="slide" id="slide">
                                <ul class="slide_ul">
                                    <li><a target="_blank" href="#"><img src="style/images/zhuanpan2.png" alt=""></a></li>
                                    <li><a target="_blank" href="#"><img src="style/images/zhuan.jpg" alt=""></a></li>
                                    <li><a target="_blank" href="#"><img src="style/images/zhuan3.jpg" alt=""></a></li>
                                    <li><a target="_blank" href="#"><img src="style/images/zhuan4.png" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <a href="javascript:void(0);" class="show_pre j-slide-btn">左边</a>
                    <a href="javascript:void(0);" class="show_next j-slide-btn">右边</a>
                </div>
            </div>
        </div>
        <div class="icons fl wfs">
            <ul id="tips">
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
            </ul>
        </div>
        <script src="style/js/jquery.SuperSlide.js"></script>
        <script>
            $(function(){
                $(".j-index-slide").slide({
                mainCell:"#slide .slide_ul",
                effect:"leftLoop",
                prevCell:".show_pre",
                nextCell:".show_next",
                titCell:"#tips li",
                titOnClassName:"cur",
                interTime:"5000",
                autoPlay:true
                });
            });
        </script>
    </div>
    
    
    <div class="cover-page-index fl wfs pt50 bcf2">
        <div class="cover-page-wrapper">
                <div class="boutique boutique-index fl wfs">
                <h3>Product Overview</h3>
                <div class="canvas">
                    <ul class="items" style="width: 1222px;">
                        <li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=pink" style="position:relative;">
                                                                  <img src="style/images/3.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=pink">Take you to Disney with our lamp</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light pink</a>
                                    </span>
                                    <p class="price-attente">Price:248$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                              </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li><li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=cool" style="position:relative;">
                                                                  <img src="style/images/2.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=cool">Save energy,be cool with the environment</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light cool</a>
                                    </span>
                                    <p class="price-attente">Price:236$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                               </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li> <li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=sport" style="position:relative;">
                                                                  <img src="upload/item1.jpg" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=sport">Open your mind,Brighten your life</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light sport</a>
                                    </span>
                                    <p class="price-attente">Price:245$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                            </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li><li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=huge" style="position:relative;">
                                                                  <img src="style/images/4.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=huge">The big world,the huge-lamp</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light huge</a>
                                    </span>
                                    <p class="price-attente">Price:366$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                                 </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li> <li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=pink" style="position:relative;">
                                                                  <img src="style/images/3.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=pink">Take you to Disney with our lamp</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light pink</a>
                                    </span>
                                    <p class="price-attente">Price:248$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                                </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li><li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=cool" style="position:relative;">
                                                                  <img src="style/images/2.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=cool">Save energy,be cool with the environment</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light cool</a>
                                    </span>
                                    <p class="price-attente">Price:236$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                                </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li><li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=sport" style="position:relative;">
                                                                  <img src="upload/item1.jpg" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=sport">Open your mind,Brighten your life</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light sport</a>
                                    </span>
                                    <p class="price-attente">Price:245$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                                </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li><li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=huge" style="position:relative;">
                                                                  <img src="style/images/4.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=huge">The big world,the huge-lamp</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light huge</a>
                                    </span>
                                    <p class="price-attente">Price:366$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                                </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li>
                                            </ul>
                </div>
            </div>
                        
            <div class="boutique boutique-index fl wfs">
                <h3>New products:</h3>
                <div class="canvas">
                    <ul class="items" style="width: 1222px;">
                     <li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=pink" style="position:relative;">
                                                                  <img src="style/images/3.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=pink">Take you to Disney with our lamp</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light pink</a>
                                    </span>
                                    <p class="price-attente">Price:248$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                                </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li><li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=cool" style="position:relative;">
                                                                  <img src="style/images/2.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=cool">Save energy,be cool with the environment</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light cool</a>
                                    </span>
                                    <p class="price-attente">Price:236$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                                </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li> <li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=sport" style="position:relative;">
                                                                  <img src="upload/item1.jpg" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=sport">Open your mind,Brighten your life</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light sport</a>
                                    </span>
                                    <p class="price-attente">Price:245$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                                </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li><li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=huge" style="position:relative;">
                                                                  <img src="style/images/4.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=huge">The big world,the huge-lamp</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light huge</a>
                                    </span>
                                    <p class="price-attente">Price:366$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                                                                                </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li>
                              </ul>
                </div>
            </div>
           
            
            <div class="church fl wfs mt50">
                <dl class="reputation fl">
                    <dt class="title"><span class="h3"><a class="title-a" href="#" target="_blank">Communication</a></span><i></i></dt>
                    <dd class="fl wfs">
                        <a class="template-community fl" target="_blank" href="#">Community</a>
                        <p class="items fl">
                            <a class="fl wfs" target="_blank" href="#">Good~~Good~~</a>
                            <a class="fl wfs" target="_blank" href="#">Good~~Good~~</a>
                            <a class="fl wfs" target="_blank" href="#">Good~~Good~~</a>
                            <a class="fl wfs" target="_blank" href="#">Good~~Good~~~</a>
                        </p>
                    </dd>
                </dl>
                
                    
                    <dl class="knowledge fl">
    <dt class="title">
        <span class="h3"><a class="title-a" target="_blank" href="#">Get-help</a></span><i></i>
        <a class="more fr" target="_blank" href="#"><span>more</span></a>
    </dt>
    <dd class="fl wfs">
                <b><a target="_blank" href="#">How to purchase our product~</a></b>
                <b><a target="_blank" href="#">How to purchase our product~</a></b>
                <b><a target="_blank" href="#">How to purchase our product~</a></b>
                <b><a target="_blank" href="#">How to purchase our product~</a></b>
                <b><a target="_blank" href="#">How to purchase our product~</a></b>
            </dd>
</dl>
                    
                
                
                    
                    <dl class="letters fl">
    <dt class="title">
        <span class="h3"><a class="title-a" target="_blank" href="#">News</a></span><i></i>
        <a class="more fr" target="_blank" href="#"><span>more</span></a>
    </dt>
    <dd class="fl wfs">
                <b><a target="_blank" href="#">Welcome to Elight~~</a></b>
                <b><a target="_blank" href="#">Welcome to Elight~~</a></b>
                <b><a target="_blank" href="#">Welcome to Elight~~</a></b>
                <b><a target="_blank" href="#">Welcome to Elight~~</a></b>
                <b><a target="_blank" href="#">Welcome to Elight~~</a></b>
            </dd>
</dl>
                    
                
            </div>
            
            
<%@ include file="footer.jsp"%>
            
        
</body>
</html>