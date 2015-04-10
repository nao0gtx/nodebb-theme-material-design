<style type="text/css">
    #header {
        box-shadow: none;
    }
</style>

<div class="login-content">
    <form class="form-horizontal" role="form" method="post" target="login" id="login-form">
        <div class="lc-block toggled" id="l-login">
            <div class="alert alert-danger" id="login-error-notify" <!-- IF error -->style="display:block"<!-- ELSE -->style="display: none;"<!-- ENDIF error -->>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <strong>[[login:failed_login_attempt]]</strong>
                <p>{error}</p>
            </div>
            <div class="input-group m-b-20 fg-float">
                <span class="input-group-addon"><i class="fa fa-fw fa-user"></i></span>
                <div class="fg-line">
                    <input class="form-control" type="text" name="username" id="username" autocorrect="off" autocapitalize="off" />
                </div>
                <label class="fg-label">{allowLoginWith}</label>
            </div>
            
            <div class="input-group m-b-20 fg-float">
                <span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
                <div class="fg-line">
                    <input class="form-control" type="password" name="password" id="password" />
                </div>
                <label class="fg-label">[[user:password]]</label>
            </div>
            
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="remember" id="remember" checked>
                    <i class="input-helper"></i>
                    [[login:remember_me]]
                </label>
            </div>
            
            <button class="btn btn-primary btn-lg btn-block" id="login" type="submit">[[global:login]]</button>

            <div class="lc-options">
                <!-- IF allowRegistration -->
                <span>[[login:dont_have_account]] <a href="{relative_path}/register">[[register:register]]</a></span>
                <!-- ENDIF allowRegistration -->
                <!-- IF showResetLink -->
                &nbsp; <a id="reset-link" href="{relative_path}/reset">[[login:forgot_password]]</a>
                <!-- ENDIF showResetLink -->
            </div>
            
        </div>
        
    </form>    
        
</div>