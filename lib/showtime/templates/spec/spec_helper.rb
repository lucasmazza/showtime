require File.join(File.dirname(__FILE__), '..', 'application.rb')

require 'rspec'
require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  Sinatra::Application
end