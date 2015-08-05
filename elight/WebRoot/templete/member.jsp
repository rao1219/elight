<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>Member center E-light</title>
    	<link rel="stylesheet" href="style/css/member-center.css">
 <%
  %>
<%@ include file="header.jsp" %>
<div class="blank"></div>

	<div class="module fl wfs">
		<div class="wrapper mt20">
			
			<div class="menu fl">
    <div class="menu-body fl">
        <div class="infos fl wfs">
            <a href="#"><img class="fl" src="style/images/noavatar_middle.gif"></a>
                            <span class="fl"><%=session.getAttribute("username")%></span>
        </div>
        <p class="index fl wfs"><a href="member.jsp" style="color:#ffffff">Member&nbsp;-&nbsp;Center</a></p>
        <dl class="menu-dl fl wfs">
            <dt class="menu-dt order fl wfs"><i></i>Order Center</dt>
            <dd class="fl wfs">
                <p><a href=member.jsp?act=rent&msg=suc>My Order</a></p>
                <p><a href="member.jsp?act=myrenting&msg=suc" >My Collection</a></p>
                <p><a href="member.jsp?act=order_list&msg=suc" >Customized order</a></p>
            </dd>
        </dl>
        <dl class="menu-dl fl wfs">
            <dt class="menu-dt member fl wfs"><i></i>Member message</dt>
            <dd class="fl wfs">
                <p><a href="member.jsp?act=profile&msg=suc">User message/Edit</a></p>
            </dd>
        </dl>
        <dl class="menu-dl fl wfs">
            <dt class="menu-dt account fl wfs"><i></i>Account center</dt>
            <dd class="fl wfs">
                <p><a href="member.jsp?act=account_detail&msg=suc"> My account</a></p>
                <p><a href="member.jsp?act=account_recharge&msg=suc"> Recharge online</a></p>
            </dd>
        </dl>
    </div>
</div>			


			
			
			<%@ include file="member-left.jsp" %>
			
	
			
			
            </div>
				
			</div>
				
     <div class="cover-page-index fl wfs bcf2" style="padding-top:20px;">
        <div class="cover-page-wrapper">
<%@ include file="footer.jsp" %>
 
</body>
</html>