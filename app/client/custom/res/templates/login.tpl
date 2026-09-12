<div class="login-page-wrapper">
    <div id="login" class="login-card{{#if anotherUser}} another-user{{/if}}">
        <div class="login-card-logo">
            <img src="{{logoSrc}}" class="logo">
        </div>

        <form id="login-form">
            {{#if hasSignIn}}
            <div class="cell" data-name="sign-in">
                {{#if hasFallback}}
                <div class="pull-right">
                    
                        role="button"
                        tabindex="0"
                        class="btn btn-link btn-icon"
                        data-action="showFallback"
                    ><span class="fas fa-chevron-down"></span></a>
                </div>
                {{/if}}
                <button
                    class="btn btn-default btn-x-wide"
                    id="sign-in"
                    type="button"
                >{{signInText}}</button>
            </div>
            {{/if}}
            <div class="form-group cell" data-name="username">
                <label for="field-userName">{{translate 'Username'}}</label>
                <input
                    type="text"
                    name="username"
                    id="field-userName"
                    class="form-control"
                    autocapitalize="off"
                    spellcheck="false"
                    tabindex="1"
                    autocomplete="username"
                    maxlength="255"
                >
            </div>
<div class="form-group cell" data-name="password">
                <label for="field-password">{{translate 'Password'}}</label>
                <div data-role="password-input-container">
                    <input
                        type="password"
                        name="password"
                        id="field-password"
                        class="form-control"
                        tabindex="2"
                        autocomplete="current-password"
                        maxlength="255"
                    >
                    <a role="button" data-action="toggleShowPassword" class="text-soft" title="{{translate 'View'}}"><span class="far fa-eye"></span></a>
                </div>
            </div>
            {{#if anotherUser}}
            <div class="form-group cell">
                <label>{{translate 'Log in as'}}</label>
                <div>{{anotherUser}}</div>
            </div>
            {{/if}}
            <div class="margin-top-2x cell" data-name="submit">
                {{#if showForgotPassword}}
                
                    role="button"
                    class="btn btn-link btn-text btn-text-hoverable btn-sm pull-right margin-top-sm"
                    data-action="passwordChangeRequest"
                    tabindex="4"
                >{{translate 'Forgot Password?' scope='User'}}</a>{{/if}}
                <button
                    type="submit"
                    class="btn btn-primary btn-s-wide"
                    id="btn-login"
                    tabindex="3"
                >{{logInText}}</button>
            </div>
        </form>
    </div>
</div>
<footer>{{{footer}}}</footer>