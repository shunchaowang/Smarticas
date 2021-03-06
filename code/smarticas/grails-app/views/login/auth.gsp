<html>
<head>
    <title><g:message code="springSecurity.login.title"/></title>
    <meta name="layout" content="main"/>
    <g:set var='layout_nomenubar' value="${true}" scope='request' />
    <g:set var='layout_nonavbar' value="${true}" scope='request' />
    <g:set var='layout_nosecondarymenu' value="${true}" scope='request' />
    <g:set var='layout_nofooter' value="${true}" scope='request' />

</head>
<body>
<section id="login" class="first">
    <div class="container col-md-12 login-style">
        <div class="row" >
            <div class="col-md-2"></div>
            <div class="col-md-8" align="middle">
                <table style="width=100%;color:#FFFFFF;border=0;cellpadding=0;cellspacing=0">
                   <tr><td colspan="2"><p>&nbsp;</p><p>&nbsp;</p></td></tr>
                   <tr>
                       <td><div align="right"><g:img dir='custom/images'
                           file="tongbaoyi-logo.png" width="180" height="100"/></div></td>
                       <td><div align="left">&nbsp;<h2>跨境收单清算管理平台</h2></div></td>
                   </tr>
                </table>
                <table style="width=100%;color:#FFFFFF;border=0;cellpadding=0;cellspacing=0">
                    <tr><td colspan="2"><p>&nbsp;</p></td></tr>
                    <tr>
                        <td><div align="right"><g:img dir='custom/images'
                            file="login-bglogin-earth1.png"
                        width="240" height="260"/></td>
                        <td class='login-form-style'>
                            <p>&nbsp;</p>
                            <div class="row" >
                                <form role="form" id='loginForm' class='form-horizontal' action='${postUrl}'
                                      method='POST' autocomplete='off'>
                                    <div class="form-group">
                                        <label for="username" class="col-md-3 control-label">
                                            <g:message code="user.username.label" default="Username"/>
                                        </label>

                                        <div class="col-md-7">
                                            <g:field type="input" class="form-control" name="j_username" id="username" placeholder="Username" value="${userInstance?.username}" required="true"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password" class="col-md-3 control-label">
                                            <g:message code="user.password.label" default="Password"/>
                                        </label>

                                        <div class="col-md-7">
                                            <g:field type="password" class="form-control" name="j_password" id="password" placeholder="Password" required="true"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-10">
                                            <label for="username" class="col-md-1 control-label"></label>
                                            <input type="submit" id="submit" class="btn btn-primary col-md-4"
                                                   value='${message(code: "login.button.label")}'/>
                                             <label for="username" class="col-md-1 control-label"></label>
                                            <input type="reset" id="reset" class="btn btn-primary col-md-4"
                                                   value='${message(code: "default.button.reset.label")}'/>
                                        </div>
                                    </div>
                                </form>
                                                            </div>
                        </td>
                        <td><div align="left"><g:img dir='custom/images'
                        file="login-bglogin-earth3.png"
                        width="20" height="260"/></td>
                    </tr>
                </table>
                <div class="row" class="container-fluid">
                    <table style="width=100%;color:#FFFFFF;border=0;cellpadding=0;cellspacing=0">
                        <tr height="120"><td>
                        <g:if test="${flash.message}">
                        <div class="alert alert-info alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            ${flash.message}
                        </div>
                    </g:if>
                    <g:hasErrors bean="${userInstance}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${userInstance}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                        error="${error}"/></li>
                            </g:eachError>
                        </ul>
                    </g:hasErrors>
                        </tr></td>
                    </table>
                </div>
            </div>
            <div class="col-md-2"></div>
    </div>
    </div>
</section>

<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
