<% provide(:title, "Sign Up")%>

<p>Sign up for a new account</p>
<div class="row">
  <div class="col-md-6 col-md-offset-3">

  </div>
</div>>

<div class="col-md-6 col-md-offset-3">
  <%= form_with(model: @user) do |f| %>
    <%= f.label :name %>
    <%= f.text_field :name %>
    
    <%= f.label :email %>
    <%= f.email_field :email %>
    <%= f.label :password %>
    <%= f.password_field :password %>
    <%= f.label :password_confirmation, "Confirmation" %>
    <%= f.password_field :password_confirmation %>
    <%= f.submit "Create my account", class: "btn btn-primary"%>
<% end %>
  </div>
</div>

# HTML/JS output:

<form accept-charset="UTF-8" action="/users" class="new_user"
 id="new_user" method="post">
 <input name="authenticity_token" type="hidden"
 value="NNb6+J/j46LcrgYUC60wQ2titMuJQ5lLqyAbnbAUkdo=" />
 <label for="user_name">Name</label>
 <input id="user_name" name="user[name]" type="text" />
 <label for="user_email">Email</label>
 <input id="user_email" name="user[email]" type="email" />
 <label for="user_password">Password</label>
 <input id="user_password" name="user[password]"
 type="password" />
 <label for="user_password_confirmation">Confirmation</label>
 <input id="user_password_confirmation"
 name="user[password_confirmation]" type="password" />
 <input class="btn btn-primary" name="commit" type="submit"
 value="Create my account" />
</form>
