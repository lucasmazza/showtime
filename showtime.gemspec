# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "showtime"
  s.version     = "0.2.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lucas Mazza"]
  s.email       = ["luc4smazza@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/showtime"
  s.summary     = "Simple Sinatra generator"
  s.description = "Application generator for simple Sinatra apps"

  s.required_rubygems_version = ">= 1.3.6"
  s.add_development_dependency "bundler", "~> 1.0"
  s.add_development_dependency "rspec", "~> 2.1"
  s.add_runtime_dependency "thor", "~> 0.14.4"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
