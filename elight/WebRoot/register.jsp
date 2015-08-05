<%/*
<?php
define('ACCESS','1');
session_start();
if(isset($_SESSION['username'])){
     header("Location: member.php"); 
}
if(isset($_POST['username'])){
    include 'conn/connect.php';
    include 'conn/operate.php';
    if(trim($_POST['username'])=="" || trim($_POST['password'])==""){
        $errurl="javascript:window.history.go(-1)";
        $errinfo="用户名和密码不能为空!";
        include('templete/err.html');
    }
    if(@mysql_fetch_array(mysql_query('select * from member where username = "'.$_POST['username'].'"'))){
        $errurl="javascript:window.history.go(-1)";
        $errinfo="该用户名已经存在，请更换其它用户名!";
        include('templete/err.html');
    }
    if($_POST['password']!=$_POST['repassword']){
        $errurl="javascript:window.history.go(-1)";
        $errinfo="两次输入的密码不一致!";
        include('templete/err.html');
    }
    if(operate::insertoneline("member",array("username","password","Email"),array($_POST['username'],md5($_POST['password']),$_POST['email']))){
        operate::loginsession($_POST['username']);
        $errurl="member.php";
        $errinfo="恭喜您，注册成功!";
        include('templete/err.html');
    }else{
        $errurl="javascript:window.history.go(-1)";
        $errinfo="系统出错，请稍后重试!";
        include('templete/err.html');
    }
}
?>
*/
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>Register - Elamp</title>
<%@ include file="templete/header.jsp" %>
<script>
function userRegist()
{
  var frm      = document.forms['registerForm'];
  var username = frm.elements['username'].value;
  var password1 = frm.elements['password'].value;
  var password2 = frm.elements['repassword'].value;
  var email     = frm.elements['email'].value;
  var msg = '';

  if (username.length == 0)
  {
    msg += 'Empty username!' + '\n';
  }

  if (password1.length == 0)
  {
    msg += 'Empty password!' + '\n';
  }
  
  if(password1 != password2)
  {
  	msg+='the two passwords are different,please input again!';
  }

  if (msg.length > 0)
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

<div class="blank"></div>

<div class="fl wfs bcf7" style="padding-bottom:20px;">
            <div class="regist-process-wrapper">
                <div class="regist-process-body fl wfs">
                    
                    <div class="regist-process-register-left fl">
                        <h2 class="title">User Register</h2>
                        <form id="registerForm" action="Register" method="post" name="formUser" onsubmit="return userRegist();">
                            <div>
                                <span class="title">Username:</span>
                                <input class="form-control text" id="username" onblur="is_registered(this.value);" name="username"  type="text">
                                <p class="tips" id="username_notice"></p>
                            </div>
                            <div>
                                <span class="title">Email:</span>
                                <input id="email" class="form-control text" type="email" onblur="checkEmail(this.value);" name="email">
                                <p class="tips" id="email_notice"></p>
                            </div>
                            
                            <div>
                                <span class="title">Password:</span>
                                <input class="form-control text" id="password1"  name="password" onblur="check_password(this.value);" type="password">
                                <p class="tips" id="password_notice"></p>
                            </div>
                            <div>
                                <span class="title">Confirm:</span>
                                <input class="form-control text" id="confirm" onblur="check_conform_password(this.value);" name="repassword" type="password">
                                <p class="tips" id="conform_password_notice"></p>
                            </div>
<!--<div class="read-protocal" style="margin-left:70px;margin-top:15px;">
                                <input id="protocal" name="agreement" type="checkbox" value="1" checked="checked" />
                                阅读并已同意<a href="#" target="_blank">《E租时代用户协议》</a> 
                            </div>-->
                            <input type="hidden" name="act" value="act_register" >
                            <input type="hidden" name="back_act" value="" />
                            <input class="btn btn-danger register-now" name="Submit" type="submit"  value="Regist now">
                        </form>
                    </div>
                    
                    
                   <div class="regist-process-register-right fr" style="margin-top:100px;">
                       <h2 class="title">I already have account</h2>
                       <a class="btn btn-info login-now" href="login.jsp">Login now</a>
                       <p class="pre-consultation">
                           hotline:<b>400&nbsp;0000&nbsp;000</b>
                       </p>
                   </div>
                    
                </div>
            </div>
            
        </div>
    
<div class="blank"></div>

     <div class="cover-page-index fl wfs bcf2" style="padding-top:20px;">
        <div class="cover-page-wrapper">
<%@ include file="templete/footer.jsp" %>

 
</body>
</html>