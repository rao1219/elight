<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>Login - elight</title>
<%@ include file="templete\header.jsp" %>
<script>
function userLogin()
{
  var frm      = document.forms['formLogin'];
  var username = frm.elements['username'].value;
  var password = frm.elements['password'].value;
  var msg = '';

  if (username.length == 0)
  {
    msg += 'Empty username!' + '\n';
  }

  if (password.length == 0)
  {
    msg += 'Empty password!' + '\n';
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
                
                <form id="loginForm" name="formLogin" action="Login" method="post" onSubmit="return userLogin()">
                    <div class="regist-process-login-left fl">
                        <h2 class="title">Log in</h2>
                          <input class="form-control text" name="username" id="username" type="text" placeholder="Username">
                          <input class="form-control text" name="password" id="password" type="password" placeholder="Password">
                          <input  class="btn btn-danger login-btn" type="submit" name="submit" value="Login" />
                        <div class="operates fl wfs">
                          <a class="fr" href="register.jsp">Forget</a>
                          <p>
                             <input type="checkbox" value="1" name="remember" id="remember" />
                              Remember the pass<span>&nbsp;not click unsafe network</span>
                          </p>
                        </div>
                    </div>
                </form>
                
                
                <div class="regist-process-login-right fr" style="padding-top:70px;">
                    <h2 class="title">Create a new account</h2>
                    <a class="btn btn-info free-registe" href="register.jsp">Register</a>
                   
                </div>
                
            </div>
        </div>
        
    </div>
     <div class="cover-page-index fl wfs bcf2" style="padding-top:20px;">
        <div class="cover-page-wrapper">
        
<%@ include file="templete/footer.jsp" %>

 
</body>
</html>

