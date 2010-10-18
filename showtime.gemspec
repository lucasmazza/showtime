# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "showtime"
  s.version     = "0.1.4"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lucas Mazza"]
  s.date        = %q{2010-08-09}
  s.email       = ["luc4smazza@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/showtime"
  s.summary     = "Simple Sinatra generator"
  s.description = "Application generator for simple Sinatra apps"

  s.required_rubygems_version = ">= 1.3.6"
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec", ">= 2.0.0"
  s.add_runtime_dependency "thor", ">= 0.14.3"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
