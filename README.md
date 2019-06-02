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
    $(this)
      .parents("form")
      .trigger("submit");
  });
});
```

Render a loop and partial

```ruby
<%= render collection: @list.items, partial: "items/item_list_item", as: :item %>

# equivalent to the following

<% @list.items.each do |item| %>
  <%= render "items/item_list_item", item: item %>
<% end %>
```

Convention for Naming

```ruby
<%= render collection: @list.items, partial: "items/item_list_item" %>

# partial code - will use partial name 'item_list_item' as local name

<%= tag.li class: ["list-group-item py-3", li_class_for_item(item_list_item)] do %>
  <%= form_for [@list, item_list_item], html: { class: "check-form" } do |f| %>
    <%= f.check_box :status, class: "toggle", checked: item_list_item.complete? %>
  <% end %>
  <span class="pl-3">
    <%= item_list_item.description %>
  </span>
<% end %>
```
