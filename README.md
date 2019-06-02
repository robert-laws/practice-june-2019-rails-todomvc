# Rails ToDoMVC - Code Along - Flatiron School

practice app with Ruby on Rails

# form_for - with nested resources

```ruby
# first object in array is parent resource, second object is main resource
<%= form_for [@list, @item] do |f| %>

<% end %>
```

Javascript to submit form on checkbox change

```javascript
$(function() {
  $("input.toggle").on("change", function() {
    $(this).parents("form").trigger("submit")
  })
})
```