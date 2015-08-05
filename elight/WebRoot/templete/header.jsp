    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="stylesheet" href="style/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/css/index.css">
    <script src="style/js/jquery.min.js"></script>
    <script src="style/bootstrap/js/bootstrap.min.js"></script>
    
    <script type='text/javascript' src='style/js/jquery.lazyload.js'></script>
    <script type="text/javascript">
        $(function(){
            $('img[data-original]').lazyload({effect:"fadeIn"});
        })
    </script>
</head>
<body>
<script type="text/javascript">
var process_request = "Processing your request...";
</script>
<div class="head fl wfs">
    <div class="cover-page-wrapper">
        <a class="fl" href="/elight"><img src="style/images/logo.png" alt="E租时代"></a>
		<div class='listing fl' style="position: relative; width: 185px;height: 45px;text-align:center;" target="_blank" >
			Beijing<br>
                <a href="#"> [ Change City ]</a></div>
            <form id="searchForm" name="searchForm" method="get" action="category.jsp" onSubmit="return checkSearchForm()"  class="search-product fl">
            <input name="k_template" type="hidden" class="k_value" value="0">
            <input class="form-control search-box" name="keywords" autocomplete="off" type="text" id="keyword" value=""/>
            <input class="submit" type="submit"   style="border:none; cursor:pointer;"> 
            <div class="search-history j-search-history fz12">
                <div class="left fl">
                    <p class="txt fl">History</p>
                    <a href="javascript:;" onClick="clear_search()"><i class="delete fr">Clean</i></a>
                    <ul class="history-items fl wfs"></ul>                </div>
                <div class="right fl">
                    <p class="txt fl">Hot Search</p>
                    <ul class="style-items fl wfs">
                        <li><a target="_blank" href="/elight/items.jsp?type=sport">e-lamp 2015</a></li>
                        <li><a target="_blank" href="/elight/items.jsp?type=pink">BOX</a></li>
                        <li><a target="_blank" href="/elight/items.jsp?type=huge">e-lamp 2014</a></li>
                        <li><a target="_blank" href="/elight/items.jsp?type=cool">e-lamp cool</a></li>
                </div>
            </div>
        </form>
        <font id="ECS_MEMBERZONE">
            <div class="head-operates-logined fr">
            <%
           // System.out.println(session.getAttribute("username"));
            	if(session.getAttribute("username")!=null){
            %>
        	<div class="j-user-img"  style="width: 54px;height: 45px;float: right;">
                <a href="/elight/member.jsp? act=myrenting"><img class="user-img" style="margin-top: -3px;" src="style/images/noavatar_middle.gif" width="45" height="45" alt=""></a>
                <div class="logined j-logined" style="height: 194px;">
                	<div style="border: 1px solid #ddd;background-color: #fff;position: absolute;">
                    <em class="trangle"></em>
                    <p class="logined-user">
                        <b class="fl"><%=(String)session.getAttribute("username") %></b>
                        <img class="user-img" style="margin-top: -3px; float:right;" src="style/images/noavatar_middle.gif" width="45" height="45" />
                    </p>
                    <ul class="logined-item">
                        <li class="order"><i></i><a href="/elight/member.jsp?act=order_list">Order</a></li>
                        <li class="member"><i></i><a href="/elight/member.jsp? act=profile&msg=suc">Member</a></li>
                    </ul>
                    <p class="logined-operate fl wfs">
                        <a class="quit" href="/elight/logout.jsp">Exit</a>
                    </p>
                    </div>
                 </div>
                 
             </div>
            <% 
            }else{
            %>
             <a href="register.jsp" class="register">Regist</a>
             <a href="login.jsp" class="login">Login</a>
             </p>
             <%}%>
        </div>
     </font>
    </div>
</div>
<script type="text/javascript" src="style/js/utils.js"></script>
<script type="text/javascript">
    
        <!--
        function checkSearchForm()
        {
            if(document.getElementById('keyword').value)
            {
                return true;
            }
            else
            {
                alert("Please input key words!");
                return false;
            }
        }
        -->
    
</script>
<script src="style/js/nav.js"></script>
<div style="height: 48px;background-color: #323231;" class="fl wfs">
    <div class="nav fl wfs j-nav">
        <div class="cover-page-wrapper cover-page-wrapper2 clearfix">
            <div class="nav-menus j-nav-menus fl">
                <a class="handle" href="category.jsp"><i></i>Product</a>
                <div class="categorys j-categorys">
                    <i class="category-trangle-bg"></i>
                    <div class="categorys-box fl wfs" style="border-left:0;">
                        <h4 class="title fl wfs">All products</h4>
                        <dl class="dl-categorys-item fl wfs">
                            <dt class="dt-categorys-item"><a>Location</a></dt>
                            <dd class="dd-categorys-item">
                                <a target="_blank" href="category.jsp">Global</a> | 
                                <a target="_blank" href="category.jsp">Local</a> 
                            </dd>
                            <dt class="dt-categorys-item"><a>Category</a></dt>
                            <dd class="dd-categorys-item">
                                <a target="_blank" href="category.jsp">Sport-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Cool-lamp</a><br>
                                <a target="_blank" href="category.jsp">Pink-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Table-lamp</a>&nbsp;<br>
                                <a target="_blank" href="category.jsp">Service</a> <br>
                            </dd>
                        </dl>
                    </div>
                    <div class="categorys-box fl wfs">
                        <h4 class="title fl wfs">Sport-lamp</h4>
                        <dl class="dl-categorys-item fl wfs">
                            <dt class="dt-categorys-item"><a>type-one</a></dt>
                            <dd class="dd-categorys-item">
                                <a target="_blank" href="category.jsp">Sport-lamp</a><br>
                                <a target="_blank" href="category.jsp">Sport-lamp</a> 
                            </dd>
                            <dt class="dt-categorys-item"><a>type-two</a></dt>
                            <dd class="dd-categorys-item">
                                <a target="_blank" href="category.jsp">Sport-lamp</a><br>
                                <a target="_blank" href="category.jsp">Sport-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Sport-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Sport-lamp</a> 
                            </dd>
                        </dl>
                    </div>
                     <div class="categorys-box fl wfs">
                        <h4 class="title fl wfs">Cool-lamp</h4>
                        <dl class="dl-categorys-item fl wfs">
                            <dt class="dt-categorys-item"><a>Cool-lamp</a></dt>
                            <dd class="dd-categorys-item">
                                <a target="_blank" href="category.jsp">Cool-lamp</a><br>
                                <a target="_blank" href="category.jsp">Cool-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Cool-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Cool-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Cool-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Cool-lamp</a> 
                            </dd>
                            <dt class="dt-categorys-item"><a>Cool-lamp</a></dt>
                            <dd class="dd-categorys-item">
                                <a target="_blank" href="category.jsp">Cool-lamp</a><br>
                                <a target="_blank" href="category.jsp">Cool-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Cool-lamp</a>
                            </dd>
                        </dl>
                    </div> <div class="categorys-box fl wfs">
                        <h4 class="title fl wfs">Pink-lamp </h4>
                        <dl class="dl-categorys-item fl wfs">
                            <dt class="dt-categorys-item"><a>Pink-lamp</a></dt>
                            <dd class="dd-categorys-item">
                                <a target="_blank" href="category.jsp">Pink-lamp</a><br>
                                <a target="_blank" href="category.jsp">Pink-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Pink-lamp</a> <br>
                                <a target="_blank" href="category.jsp">Pink-lamp</a> 
                            </dd>
                        </dl>
                    </div> <div class="categorys-box fl wfs">
                        <h4 class="title fl wfs">Service </h4>
                        <dl class="dl-categorys-item fl wfs">
                            <dt class="dt-categorys-item"><a>Service</a></dt>
                            <dd class="dd-categorys-item">
                                <a target="_blank" href="category.jsp">Service</a> <br>
                                <a target="_blank" href="category.jsp">Service</a> <br>
                                <a target="_blank" href="category.jsp">Service</a> <br>
                                <a target="_blank" href="category.jsp">Service</a> <br>
                                <a target="_blank" href="category.jsp">Service</a><br>
                                <a target="_blank" href="category.jsp">Service</a><br>
                                <a target="_blank" href="category.jsp">Service</a><br>
                                <a target="_blank" href="category.jsp">Service</a><br>
                                <a target="_blank" href="category.jsp">Service</a> <br>
                        </dl>
                    </div> <div class="categorys-box fl wfs">
                        <h4 class="title fl wfs">Huge-lamp</h4>
                        <dl class="dl-categorys-item fl wfs">
                            <dt class="dt-categorys-item"><a>Huge-lamp</a></dt>
                            <dd class="dd-categorys-item">
                                <a target="_blank" href="category.jsp">Huge-lamp</a><br>
                                <a target="_blank" href="category.jsp">Huge-lamp</a><br>
                                <a target="_blank" href="category.jsp">Huge-lamp</a><br>
                                <a target="_blank" href="category.jsp">Huge-lamp</a><br>
                                <a target="_blank" href="category.jsp">Huge-lamp</a><br>
                                <a target="_blank" href="category.jsp">Huge-lamp</a>
                            </dd>
                        </dl>
                    </div>
                    <div class="categorys-concact">
                        <strong>Welcome to E-light!</strong>
                    </div>
                </div>
            </div>
            <%
            String cart;
            String outWel;
            if(session.getAttribute("cartNum")==null||session.getAttribute("cartNum")=="0")
            {
            	cart="0";
            	outWel="You haven't added any item to the cart~";
            }
            else
            {
            	cart=""+session.getAttribute("cartNum");
            	outWel="Click here to see details of items~";
            }
             %>
            <a class="channel channel-now " href="index.jsp">Homepage<span></span></a>
                        <a class="channel " href="nearby.jsp" >Periphery<span></span></a>
                        <a class="channel " href="category.jsp"  >Browse<span></span></a>
                        <a class="channel " href="communicate.jsp"  >Communication<span></span></a>
                        <div class="cart" id="ECS_CARTINFO" style="position:relative;z-index: 15;">
             <a href="cart.jsp" title="Check the cart"><i></i><span>Cart</span><strong><%=cart%></strong></a>
<ul class="car_ul" style="padding:35px; background:#fff;position: absolute;top: 47px;text-align: center;width:405px;*height: 30px;*width:325px;right:-1px;border: 1px solid #ddd;display:none;">
	<img src="style/images/cart_car.png"/>
	<a href="/elight/cart.jsp" style="color:#ccc;"><%=outWel %></a>
</ul>

            </div>
        </div>
    </div>
</div>