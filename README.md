# Rails Re-Former

Rails forms practice. This is an exercise for [The Odin Project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/forms?ref=lnav).

## Form using HTML

```html
<form action="/users" method="post" accept-charset="UTF-8">
  <label for="username">Username:</label>
  <input type="text" id="username" name="user[username]">
  <br>
  <label for="email">Email:</label>
  <input type="email" id="email" name="user[email]">
  <br>
  <label for="password">Password:</label>
  <input type="password" id="password" name="user[password]">
  <br>
  <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">
  <input type="submit" value="Submit">
</form>
```

## Form using #form_tag

```html
<%= form_tag "/users" do %>
  <div>
    <%= label_tag :username, "Username:" %>
    <%= text_field_tag :username %>
  </div>
  <div>
    <%= label_tag :email, "Email:" %>
    <%= email_field_tag :email %>
  </div>
  <div>
    <%= label_tag :password, "Password:" %>
    <%= password_field_tag :password %>
  </div>
  <div>
    <%= submit_tag "Submit" %>
  </div>
<% end %>
```

## Form using #form_for

```html
<%= form_for @user do |f| %>
  <div>
    <%= f.label :username, "Username:" %>
    <%= f.text_field :username %>
  </div>
  <div>
    <%= f.label :email, "Email:" %>
    <%= f.email_field :email %>
  </div>
  <div>
    <%= f.label :password, "Password:" %>
    <%= f.password_field :password %>
  </div>
  <div>
    <%= f.submit "Submit" %>
  </div>
<% end %>
```
