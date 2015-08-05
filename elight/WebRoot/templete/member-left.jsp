
<%@page import="jspservlet.vo.Product"%>
<%@page import="jspservlet.vo.Order"%>
<%@page import="jspservlet.vo.Cart"%>
<%@page import="java.util.ArrayList,jspservlet.*"%>
<%
	System.out.println(request.getParameter("msg"));
//request.setAttribute("username", session.getAttribute("username"));
if(request.getParameter("msg")==null)
	response.sendRedirect("/elight/OrderQuery");
	else{
	ArrayList<Cart> cartList=null;
	ArrayList<Order> orderList=null;
	try{
	cartList = (ArrayList<Cart>)session.getAttribute("cartInOrderList");
	orderList = (ArrayList<Order>)session.getAttribute("orderList");
	}catch(Exception e){}
	
System.out.println(session.getAttribute("username"));
if(session.getAttribute("member")==null)
	response.sendRedirect("/elight/MemberServer");


System.out.println(request.getParameter("act"));
if(request.getParameter("act")==null||request.getParameter("act").equals("profile")){
%>



<div class="member-index fr w955">
	<div class="left fl">
		<h3>
			Dear ,
			<%=(String)session.getAttribute("username")%>
			, Welcome to E-light!
		</h3>
		</p>
		<dl class="orders-items fl wfs">
			<dt class="fl wfs">
				<h4 class="fl">Your order</h4>
				<a class="btn btn-danger btn-xs fr" href="member.php?act=order_list">More
					orders</a>
			</dt>
			<dd class="fl wfs" style="height: 450px;">
				<div class="orders-no fl wfs">
					<img
						src="http://member.ecmoban.com/content/themes/ecmoban2014/images/orders-no.png"
						alt="">
					<p>
						<a href="/elight/cart.jsp">Click to see more details in your
							cart~</a>
					</p>
				</div>
			</dd>
		</dl>
	</div>


	<div class="right fr">
		<div class="data">
			<p>
				<a href="member.jsp?act=account_detail">Edit</a>Your information
			</p>
			<div>
				<span class="qq">Q Q: <%=(String)session.getAttribute("qq")%></span>
				<span class="phone">Tel: <%=(String)session.getAttribute("phone")%></span>
				<span class="email">Email: <%=(String)session.getAttribute("email")%></span>
			</div>
		</div>
	</div>
</div>




<%
	}else if(request.getParameter("act").equals("order_list")) {
%>
<script language="javascript">
	var http_request = false;
	function send_request(url) {//初始化，指定处理函数，发送请求的函数  
		http_request = false;
		//开始初始化XMLHttpRequest对象  
		if (window.XMLHttpRequest) {//Mozilla浏览器  
			http_request = new XMLHttpRequest();
			if (http_request.overrideMimeType) {//设置MIME类别  
				http_request.overrideMimeType("text/xml");
			}
		} else if (window.ActiveXObject) {//IE浏览器  
			try {
				http_request = new ActiveXObject("Msxml2.XMLHttp");
			} catch (e) {
				try {
					http_request = new ActiveXobject("Microsoft.XMLHttp");
				} catch (e) {
				}
			}
		}
		if (!http_request) {//异常，创建对象实例失败  
			window.alert("创建XMLHttp对象失败！");
			return false;
		}
		http_request.onreadystatechange = processrequest;
		//确定发送请求方式，URL，及是否同步执行下段代码  
		http_request.open("GET", url, true);
		http_request.send(null);
	}
	//处理返回信息的函数  
	function processrequest() {
		if (http_request.readyState == 4) {//判断对象状态  
			if (http_request.status == 200) {//信息已成功返回，开始处理信息  
				document.getElementById('class3').innerHTML = http_request.responseText;
			} else {//页面不正常  
				alert("您所请求的页面不正常！");
			}
		}
	}
	function getclass(obj) {
		var pid = document.formEdit.select1.value;
		document.getElementById(obj).innerHTML = "<select id='class3' name='select2' style='width:150;'><option>loading...</option></select>";
		send_request('other/ajax.php?pid=' + pid);
	}
</script>
<script type="text/javascript" src="keditor/kindeditor-min.js"></script>
<script type="text/javascript" src="keditor/lang/zh_CN.js"></script>
<script>
	var editor;
	KindEditor.ready(function(K) {
		editor = K.create('textarea[name="content"]', {
			cssPath : 'keditor/plugins/code/prettify.css',
			uploadJson : 'keditor/php/upload_json.php',
			fileManagerJson : 'keditor/php/file_manager_json.php',
			allowFileManager : true
		});
	});
</script>
<div class="member-infos fr w955">
	<h3 class="operate-title mt20">Customization for Individual</h3>
	<div class="infos">
		<div class="infos-item j-infos-item" style="display:block;">
			<form id="infosForm" name="formEdit" action="member.jsp"
				method="post" enctype="multipart/form-data">
				<p class="p-item top-line">
					<span class="tit">Product</span> <input name="title" type="text"
						class="form-control" value="" />
				</p>
				<p class="p-item top-line">
					<span class="tit">Type</span> <select class="form-control"
						name="class" style="width:200px;">
						<?php
                                    foreach($cat as $key=>$value){
                                        echo "<option value='$value[0]'>$value[1]</option>";
                                    }
                                    ?>
					</select>
				</p>

				<p class="p-item top-line">
					<span class="tit">Add-file</span><input type="file"
						class="form-control" name="pic" />

				</p>

				<p class="p-item top-line">
					<span class="tit">Location</span> <select name="select1"
						id="class1" style="width:150;" onChange="getclass('class2');">
						<option selected value="">Province</option>

						<?  
                               $sql = "select id,city from city where parentid=0";  
                               $result = mysql_query( $sql );  
                               while($res = mysql_fetch_row($result)){  
                             ?>
						<option value="<? echo $res[0]; ?>"><? echo $res[1]; ?></option>
						<? } ?>
					</select> <span id="class2"></span>

				</p>
				<p class="p-item top-line">
					<span class="tit">Address</span> <input name="address"
						style="width:350px;" type="text" class="form-control" value="" />(Your
					concrete address)
				</p>

				<p class="p-item top-line">
					<span class="tit">Price/lowest</span><input name="money"
						type="text" class="form-control" style="width:100px" value="" /> <span
						class="tit">Price/highest</span> <input name="deposit" type="text"
						class="form-control" style="width:100px" value="" />
				</p>
				<p class="p-item top-line">
					<span class="tit">Description</span>

					<textarea id="textarea" name="content"
						style="width:700px;height:300px;visibility:hidden;"></textarea>


				</p>
				<p class="p-item top-line" style="padding-bottom:50px;">
					<input name="act" type="hidden" value="rent" /> <input
						class="btn btn-danger confirm-modify" name="submit" type="submit"
						value="Submit" style="border:none;" />
				</p>
			</form>
		</div>
	</div>

</div>

<%
	} else if (request.getParameter("act").equals("account_detail")) {
%>


<div class="member-infos fr w955">

	<h3 class="operate-title mt20">User Information</h3>
	<div class="infos">
		<div class="infos-item j-infos-item" style="display:block;">
			<form id="infosForm" name="formEdit" action="/elight/MemberServer"
				method="post">
				<p class="p-item top-line">
					<span class="tit">Username</span> <i><%=(String) session.getAttribute("username")%></i>
				</p>
				<p class="p-item top-line">
					<span class="tit">Password</span> <input class="form-control"
						id="password" name="password" type="password" value="" />(Keep
					null if not reset)
				</p>
				<p class="p-item top-line">
					<span class="tit">E-mail</span> <input name="Email" type="text"
						class="form-control"
						value=<%=(String) session.getAttribute("email")%>>
				</p>
				<p class="p-item top-line">
					<span class="tit">Name</span> <input name="name" type="text"
						class="form-control"
						value=<%=(String) session.getAttribute("name")%>>
				</p>
				<p class="p-item top-line">
					<span class="tit">Phone</span> <input name="phone" type="text"
						class="form-control"
						value=<%=(String) session.getAttribute("phone")%>>
				</p>
				<p class="p-item top-line">
					<span class="tit">QQ</span> <input name="qq" type="text"
						class="form-control" value=<%=(String) session.getAttribute("qq")%>>
				</p>
				<p class="p-item top-line" style="padding-bottom:50px;">
					<input name="act" type="hidden" value="edit_profile" /> <input
						class="btn btn-danger confirm-modify" name="submit" type="submit"
						value="Save" style="border:none;" />
				</p>
			</form>
		</div>
	</div>

</div>



<%
	} else if (request.getParameter("act").equals("rent")) {
			if (request.getParameter("msg") == null)
				response.sendRedirect("/elight/OrderQuery");
			if (session.getAttribute("orderList") == null) {
				orderList = new ArrayList<Order>();
			} else {
				Order tempOrder = null;
				for (int i = 0; i < orderList.size(); i++) {
					tempOrder = orderList.get(i);
%>

<div style="float:right">

	<form>
		<table width="100%" align="center" border="0" cellpadding="5"
			cellspacing="1" bgcolor="#dddddd">
			<tbody>
				<tr>
				<h2>
				
					<th bgcolor="#ffffff"><font color="red" size="6px">Order</font>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>

					<th bgcolor="#ffffff"><font color="red" size="6px">Date</font></th>
				
				</h2>
					<br />
				

				<table width="100%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#dddddd">
					<tbody>
						<tr>
							<td bgcolor="#ffffff">&nbsp;&nbsp;<%="  "
									+ tempOrder.getId()
									+ "      ---------------------------------------------------------------------------------------------- "
									+ tempOrder.getDate()%><br />
								

							


	<div style="float:relative" >
		<%
			Cart tempCart = null;
							for (int j = 0; j < cartList.size(); j++) {
								if (cartList.get(j).getOrderId() == tempOrder
										.getId()) {
									tempCart = cartList.get(j);
		%>

		<hr>
						
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Item:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=" " + tempCart.getProductType()%><br />
						
						<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=" " + tempCart.getProductPrice()%><br />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=" " + tempCart.getNumber()%>

						<hr>
	</div>

	<%
		}

						}
	%>
	<b><font color="red">Address:</font></b><br /> <%=tempOrder.getUseraddress()%><br /><br />
	<b><font color="red">Comments:</font></b><br /> <%=tempOrder.getCommemts()%><br />
<br />
<b><font color="red">Total price:</font></b>
<br />
<%=tempOrder.getTotal_price()%>
</td>
							<td align="right" bgcolor="#ffffff"></td>
						</tr>
						</tr>

</tbody>
</table>
</tbody>
</table>
</form>
<hr>
</div>


<%
	}

			}
%>





<%
	} else if (request.getParameter("act").equals("myrenting")) {
		if(session.getAttribute("collect")==null){
			response.sendRedirect("/elight/OrderQuery?page=collect");
		}
		else{
		
		ArrayList<Product> mycollect = (ArrayList<Product>)session.getAttribute("collect");
		%>
		
		<img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><img src="http://www.zulinbao.com/icon/flag_1.gif"  alt=""><h2><font color="red"> My Collections:</font></h2>
           <div class="boutique">
        <ul class="items wfs">
	
		
		
		
		
		<% 
		
		
		Product tempProduct = null;
		
		for(int i=0;i<mycollect.size();i++){
			tempProduct = mycollect.get(i);
			System.out.println(tempProduct.getType());
			if(tempProduct.getType().equals("sport")){
			%>
			<li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=sport" style="position:relative;">
                                                                  <img src="upload/item1.jpg" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=sport">Open your mind,Brighten your life</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light sport</a>
                                    </span>
                                    <p class="price-attente">Price:200$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                     $:200 yuan                                                            </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li>
			
			
			<% 
			}
			
			else if(tempProduct.getType().equals("huge")){
			%>
			<li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=huge" style="position:relative;">
                                                                  <img src="style/images/4.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=huge">The big world,the huge-lamp</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light huge</a>
                                    </span>
                                    <p class="price-attente">Price:200$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                     $:200 yuan                                                            </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li>
			
			<% 
			}
			
			else if(tempProduct.getType().equals("pink")){
			%>
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
                                    <p class="price-attente">Price:200$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                     $:200 yuan                                                            </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li>
			
			<% 
			}
			
			else if(tempProduct.getType().equals("cool")){
			%>
			<li class="items-li j-items-li">
                                                    <a target="_blank" href="/elight/ProductServelet?type=cool" style="position:relative;">
                                                                  <img src="style/images/2.gif" title="商品TITLE">
                            </a>
                            <div class="wrap_div">
                                <div>
                                    <b class="title"><a target="_blank" href="/elight/ProductServelet?type=cool">Save energy,be cool with the environment</a></b>
                                    <span class="description">
                                      <a href="category.jsp" target="_blank" title="">E-light cool</a>
                                    </span>
                                    <p class="price-attente">Price:200$<br>city:Beijing</p>
                                </div>
                            </div>
                            <p class="price-attente">
                              <span class="price">
                                     $:200 yuan                                                            </span>
                              <span class="attente" title="浏览量">258</span>
                            </p>
                        </li> 
			
			<% 
			}
		}
	}

	}
	}
%>
