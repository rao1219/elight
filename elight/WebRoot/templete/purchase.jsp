<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>Confirm-Order Elight</title>
    	<link rel="stylesheet" href="style/css/member-center.css">
<%@ include file="header.jsp" %>
<%@page import="jspservlet.vo.Product"%>

<style>
body,input,button{background-color:white;font:normal 14px "Microsoft Yahei";margin:0;padding:0}
body{background-color:white}
.odform-tit{font-weight:normal;font-size:25px;color:#595757;line-height:40px;text-align:center;border-bottom:1px solid #c9cacb;margin:0;padding:5% 0}
.odform-tit img{height:40px;vertical-align:middle;margin-right:15px}
.odform{padding:5%}
.input-group{margin-bottom:5%;position:relative}
.input-group label{padding:2% 0;position:absolute;color:#595757}
.input-group input{margin-left:10em;padding:3% 5%	;box-sizing:border-box;background:#efeff0;border:0;border-radius:5px;color:#595757;width:100%}
.odform button{ background:#CC0000 ;color:#00FF00;text-align:center;border:0;border-radius:10px;padding:3%;width:100%;font-size:16px}
.odform .cal{background-image:url(style/images/daetixian-cal.png);background-repeat:no-repeat;background-position:95% center;background-size:auto 50%}
.odform .xl{background-image:url(style/images/daetixian-xl.png);background-repeat:no-repeat;background-position:95% center;background-size:auto 20%}
</style>


<div class="blank"></div>
<div class="module fl wfs">
	<div class="cover-page-details fl wfs bcf2">
        <div class="cover-page-wrapper">
            <div class="place fz12" style="padding-left:20px;">
    <a href=".">Homepage</a> <code>&gt;</code> <a href="#">Product</a> <code>&gt;</code> Open your mind, Brighten your life </div>
     
<% Product product =(Product)session.getAttribute("productContent"); %>
<script>
function checkForm()
{
  var frm      = document.forms['subform'];
  var number = frm.elements['number'].value;
  var address = frm.elements['userAddress'].value;
  var msg='';
  if(number.length==0)
  {
  	msg+='You should input the order number';
  }
  if(address.length==0)
  {
  	msg+='You should input your address';
  }
  if(msg.length!=0)
  {
  	alert(msg);
  	return false;
  }
  else
  {
  	return true;
  }
}
</script>

<div class="fl wfs bcf7" style="padding-bottom:20px;">
        <div class="regist-process-wrapper">
            <div class="regist-process-body fl wfs">
                
               <h1 class="odform-tit"><img src="style/images/daetixian-tit.png" alt="大额提现预约">Add an Item</h1>
<div class="odform">
	<form action="/elight/CartServlet" id="subform" method="post" onSubmit="return checkForm();">
		<div class="input-group">
			<label for="khname">Product:</label>
			<input type="text" class="xl" id="wdname" name="productType" readonly="<%=(String)session.getAttribute("product") %>" value="E-lamp-<%=(String)session.getAttribute("type") %>" >
		
		</div>
		<div class="input-group">
			<label for="khname">Price:</label>
			<input type="text" class="xl" id="wdname" name="productPrice" readonly="<%=product.getPrice()%>" value="<%=product.getPrice()%>" >
		
		</div>
		<div class="input-group">
			<label for="khname">Username:</label>
			<input type="text" id="khname" name="username" readonly="<%=(String)session.getAttribute("username")  %>" value="<%=(String)session.getAttribute("username")  %>" >
		</div>
		<div class="input-group">
			<label for="khname">Phone:</label>
			<input type="text" id="khname" name="userPhone" readonly="<%=(String)session.getAttribute("phone") %>"value="<%=(String)session.getAttribute("phone") %>">
		</div>
		<div class="input-group">
			<label for="khname">Email:</label>
			<input type="text" id="khname" name="userEmail" readonly="<%=(String)session.getAttribute("email") %>" value="<%=(String)session.getAttribute("email") %>">
		</div>
		
		<div class="input-group">
			<label for="khname">Number:</label>
			<input type="number" min="1" id="khname" name="number" placeholder="Please input your order number">
		</div>
		<button>Add to cart</button>
	</form>
                
                
                
                
            </div>
        </div>
        
    </div>
     <div class="cover-page-index fl wfs bcf2" style="padding-top:20px;">
        <div class="cover-page-wrapper">

	
     
     
</div>
 	
		
<%@ include file="footer.jsp" %>
 
</body>
</html>