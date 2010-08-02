require 'rubygems'
require 'sinatra'

get '/' do
<% if options.views? %>
  @text = "Hello world!"
  erb :index
<% else %>
  "Hello world!"
<% end %>
end
