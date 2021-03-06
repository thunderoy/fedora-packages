<% import tg %>
<div
     id="${w.id}"
     class="login panel">

    <h3>Log In</h3>
    <form action="${tg.url('/login_handler')}"
          onSubmit="moksha.add_hidden_form_field(this, 'came_from', document.location, false)"
          method="POST">

        % if not w.came_from is UNDEFINED:
            <input type="hidden" name="came_from" value="${w.came_from}"></input>
        % endif
        <div>
            <span>
                User Name
            </span>
            <input type="text" name="login"></input>
        </div>
        <div>
            <span>
                Password
            </span>
            <input type="password" name="password"></input>
        </div>
        <input class="button" type="submit" value="Login"/>
        <br />
        <a href="https://admin.fedoraproject.org/accounts/user/new" target="_blank" class="small-text">Need an account?</a><br />
        <a href="https://admin.fedoraproject.org/accounts/user/resetpass" target="_blank" class="small-text">Forget your password?</a>
    </form>
</div>
