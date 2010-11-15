<% if options.gemfile? %>
require 'rubygems'
require 'bundler'

Bundler.require
<% else %>
require 'rubygems'
require 'sinatra'
<% end %>

require 'application'

run Sinatra::Application