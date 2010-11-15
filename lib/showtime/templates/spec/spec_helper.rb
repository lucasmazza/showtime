require File.join(File.dirname(__FILE__), '..', 'application.rb')

<% if options.gemfile? %>
Bundler.require :test
<% else %>  
require 'rspec'
require 'rack/test'
<% end %>

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  Sinatra::Application
end