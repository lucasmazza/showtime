# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{showtime}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lucas Mazza"]
  s.date = %q{2010-07-21}
  s.default_executable = %q{showtime}
  s.description = %q{Application generator for simple Sinatra apps.}
  s.email = %q{luc4smazza@gmail.com}
  s.executables = ["showtime"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown",
     "TODO"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "TODO",
     "VERSION",
     "bin/showtime",
     "lib/showtime.rb",
     "lib/showtime/generator.rb",
     "lib/showtime/templates/.gems",
     "lib/showtime/templates/Rakefile",
     "lib/showtime/templates/application.rb",
     "lib/showtime/templates/config.ru",
     "lib/showtime/templates/spec/application_spec.rb",
     "lib/showtime/templates/spec/spec_helper.rb",
     "spec/generator_spec.rb",
     "spec/helper_methods.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/lucasmazza/showtime}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simple Sinatra generator}
  s.test_files = [
    "spec/generator_spec.rb",
     "spec/helper_methods.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<thor>, ["= 0.13.8"])
    else
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_dependency(%q<thor>, ["= 0.13.8"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
    s.add_dependency(%q<thor>, ["= 0.13.8"])
  end
end
