<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <title>Identificate</title>
    <asset:link rel="icon" href="user.ico" type="image/x-ico" />
    <style type="text/css" media="screen">

    #login {
        margin: 15px 0px;
        padding: 0px;
        text-align: center;
    }
    #login .inner {
        width: 340px;
        padding-bottom: 6px;
        margin: 60px auto;
        text-align: left;
        border-color: #1C2833;
        background-color: #1C2833;
    }
    #login .inner .fheader {
        padding: 18px 26px 14px 26px;
        background-color: #f7f7ff;
        margin: 0px 0 14px 0;
        color: #2e3741;
        font-size: 18px;
        font-weight: bold;
    }
    #login .inner .cssform p {
        clear: left;
        margin: 0;
        padding: 4px 0 3px 0;
        padding-left: 105px;
        margin-bottom: 20px;
        height: 1%;
    }
    #login .inner .cssform input[type="text"] {
        width: 120px;
    }
    #login .inner .cssform label {
        font-weight: bold;
        float: left;
        text-align: right;
        margin-left: -105px;
        width: 110px;
        padding-top: 3px;
        padding-right: 10px;
    }
    #login #remember_me_holder {
        padding-left: 120px;
    }
    #login #submit {
        margin-left: 15px;
    }
    #login #remember_me_holder label {
        float: none;
        margin-left: 0;
        text-align: left;
        width: 200px
    }
    #login .inner .login_message {
        padding: 6px 25px 20px 25px;
        color: #c33;
    }
    #login .inner .text_ {
        width: 120px;
    }
    #login .inner .chk {
        height: 12px;
    }

    footer {
        position:fixed;
    }
    </style>

</head>

<body>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
          <g:img dir="images" file="iconn.png" width="30" height="30" /> 
          <div style="width: 20px">
          </div>
          <a class="navbar-brand" href="${createLink(uri: '/')}"> Sigueme  |</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="${createLink(uri: '/')}">Inicio<span class="sr-only">(current)</span></a>
              </li>
            </ul>
          </div>
        </nav>

<div id="login">
    <div class="inner">
        <div class="fheader"><g:message code='springSecurity.login.header'/></div>

        <g:if test='${flash.message}'>
            <div class="login_message">${flash.message}</div>
        </g:if>

        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
            <p>
                <label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
                <input type="text" class="text_" name="${usernameParameter ?: 'username'}" id="username"/>
            </p>

            <p>
                <label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
                <input type="password" class="text_" name="${passwordParameter ?: 'password'}" id="password"/>
            </p>

            <p id="remember_me_holder">
                <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if> 
                <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
            </p>

            <p>
                <input type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
            </p>
        </form>
    </div>
</div>
<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>

    <footer>
        <center>
        <p>Copyright &copy; 2018, Corporación Sigueme, S.A. de C.V.  All rights reserved. &middot; Hackathon 2018</p>
            </center>
    </footer>
</body>
</html>