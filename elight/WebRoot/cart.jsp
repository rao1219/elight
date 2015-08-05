<%@page import="java.util.*,jspservlet.vo.*"%>
<!DOCTYPE html>
<style>
body, input, button {
	font: normal 14px "Microsoft Yahei";
	margin: 0;
	padding: 0
}

.odform-tit {
	font-weight: normal;
	font-size: 25px;
	color: #595757;
	line-height: 40px;
	text-align: center;
	border-bottom: 1px solid #c9cacb;
	margin: 0;
	padding: 5% 0
}

.odform-tit img {
	height: 40px;
	vertical-align: middle;
	margin-right: 15px
}

.odform {
	padding: 5%
}

.input-group {
	margin-bottom: 5%;
	position: relative
}

.input-group label {
	padding: 2% 0;
	position: absolute;
	color: #595757
}

.input-group input {
	margin-left: 5em;
	padding: 3% 5%;
	box-sizing: border-box;
	background: #efeff0;
	border: 0;
	border-radius: 5px;
	color: #595757;
	width: 200%
}

.odform button {
	background: #8ec31f;
	color: #fff;
	text-align: center;
	border: 0;
	border-radius: 10px;
	padding: 3%;
	width: 100%;
	font-size: 16px
}

.odform .cal {
	background-image: url(images/daetixian-cal.png);
	background-repeat: no-repeat;
	background-position: 95% center;
	background-size: auto 50%
}

.odform .xl {
	background-image: url(images/daetixian-xl.png);
	background-repeat: no-repeat;
	background-position: 95% center;
	background-size: auto 20%
}
</style>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>Cart - elight</title>
<%
	try{
	if(request.getParameter("act").equals("clean")){
		session.removeAttribute("cartList");
		ArrayList<Cart> list = new ArrayList<Cart>();
		session.setAttribute("cartList", list);
	
	}
}catch(Exception e){
	System.out.println("Initial your request...");
}
	//System.out.println(request.getParameter("act"));
	//System.out.println(session.getAttribute("act"));
	if(session.getAttribute("cartList")==null){
		session.setAttribute("cartNum", "0");
	}
	ArrayList<Cart> cartList = null;
	if(session.getAttribute("cartList")==null){
		cartList = new ArrayList<Cart>();
	}
	else{
		cartList = (ArrayList<Cart>)session.getAttribute("cartList");
	}
	session.setAttribute("cartNum", cartList.size());
	int total=0;
%>
<%@ include file="templete\header.jsp"%>
<style>
input[type="text"] {
	border-bottom: solid 1px #ccc;
}
</style>


<div class="blank"></div>

<div class="fl wfs bcf7" style="padding-bottom:20px;">
	<div class="regist-process-wrapper">
		<div class="regist-process-body fl wfs">

			<h2>My Shopping Cart:</h2>
			<%
				if(cartList==null||cartList.size()==0){
			%>
			<br />
			<br /> No goods in the shopping cart!<br /> <a href="index.jsp">Click
				here to buy more:)....</a>

			<%
				} else {
			%>


			<div class="clearfloat"></div>
			<%
				session.setAttribute("cartNum", cartList.size());
					Cart cartItem = null;
					for(int i=0;i<cartList.size();i++){
				cartItem = cartList.get(i);
				total+=Integer.parseInt(cartItem.getProductPrice())*Integer.parseInt(cartItem.getNumber());
			%>

			<div class="info">

				<hr>
				<h4>
					Item:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=" "+(i+1)%><br />
				</h4>
				<br />
				Product:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=" "+cartItem.getProductType()%><br />
				Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=" "+Integer.parseInt(cartItem.getProductPrice())%><br />
				Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=" "+cartItem.getNumber()%><br />
				Total
				price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=" "+Integer.parseInt(cartItem.getProductPrice())*Integer.parseInt(cartItem.getNumber())%><br />

				<hr>
			</div>

			<div class="clearfloat"></div>
			<%
				}
			%>
			<br />
			<script>
				function check() {
					var frm = document.forms['OrderForm'];
					var address = frm.elements['userAddress'].value;
					
					if(address.length==0)
					{
						alert('Eempty address!');
						return false;
					}
					else if (confirm('Sure to submit?')) {
						return true;
					} else {
						return false;
					}
				}
			</script>



			<div class="info"></div>

			<%="The total price in your cart is: " + total + " yuan"%>
			<br />
			<br /> <a href="index.jsp">Click here to buy more:)....</a><br />
			<br />
			<form id="OrderForm" action="/elight/Order" method="post"
				onsubmit="return check();">
				<div class="input-group">
					<label for="khname">Address:</label> <input type="text" id="khname"
						name="userAddress" placeholder="Please input your harvest address">
				</div>
				<div class="input-group">
					<label for="khname">Comments:</label> <input type="text"
						class="cal" name="comments" id="khname"
						placeholder="Please input the extra comments">
				</div>
				<div class="regist-process-login-left fl">

					<input class="btn btn-danger login-btn" type="submit" name="submit"
						value="Submit" />

				</div>

			</form>
			<form id="loginForm" name="formLogin"
				action="/elight/cart.jsp?act=clean" method="post"
				onSubmit="return submit()">
				<div class="regist-process-login-left fl">


					<input class="btn btn-danger login-btn" type="submit" name="clean"
						value="&nbsp;Clean&nbsp;" />
				</div>

			</form>

			<%
				}
			%>






		</div>
	</div>

</div>
<div class="cover-page-index fl wfs bcf2" style="padding-top:20px;">
	<div class="cover-page-wrapper">

		<%@ include file="templete/footer.jsp"%>


		</body>
</html>

