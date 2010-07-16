require 'application'

<% unless options.heroku? %>
root_dir = File.dirname(__FILE__)

set :environment, ENV['RACK_ENV'].to_sym
set :root,        root_dir
set :app_file,    File.join(root_dir, 'application.rb')
disable :run
<% end %>

run Sinatra::Application