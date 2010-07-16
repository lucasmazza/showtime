# encoding: utf-8
require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "showtime"
    gem.summary = %Q{Simple Sinatra generator}
    gem.description = %Q{Application generator for simple Sinatra apps.}
    gem.email = "luc4smazza@gmail.com"
    gem.homepage = "http://github.com/lucasmazza/showtime"
    gem.authors = ["Lucas Mazza"]
    gem.add_development_dependency "rspec", ">= 1.3.0"
    gem.require_path = 'lib'
    gem.bindir = "bin"
    gem.executables = %w(showtime)
    gem.test_files.include 'spec/**/*'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

task :default => :spec
