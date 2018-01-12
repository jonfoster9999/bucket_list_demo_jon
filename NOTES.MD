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

  <h3><%= link_to f.name, user_bucket_list_path(f) %></h3>

     redirect_to user_bucket_list_path(current_user, @bucket_list) - show page for indiv bucketlist

     <%= f.label m.bucket_list_movies.seen %>
     <%= check_box_tag "bucket_list[bucket_list_movies_attributes][seen]", m.id %>

     @bucket_list = BucketList.find(params[:bucket_list_id])
