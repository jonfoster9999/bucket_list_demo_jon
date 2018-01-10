<!-- <% @movies.each do |movie| %>
  <p><%=movie.name%> | <%=movie.genre%> | <%=movie.rating%>
  <%= form_tag "/bucket_list_movies/new" do%>
  <%= hidden_field_tag :movie_id, @movie.id %>
  <%= hidden_field_tag :bucket_list_id, @bucket_list.id %>
  <%= submit_tag "Add to Bucket List"%>
  <% end %> </p>
<% end %> -->

<!-- <%= fields_for(:movies) do |movies| %>
  <%= movies.checkbox :name %>
<% end %> -->

<!-- <%= fields_for(:movies) do |movies| %>
  <%= movies.checkbox :name %>
<% end %> -->
<!-- <%= f.collection_select :movie_ids, Movie.all, :id, :name, include_blank: "" %><br> -->

<!-- <% @movies.each do |m| %>
  <%= f.label m.name %>
  <%= check_box_tag "movie_ids", m.id %>
<% end %> -->

<!-- <%= check_box_tag "[movie_ids][]", m.id %>
