require 'spec_helper'
require 'helper_methods'

describe Showtime::Generator do
  include HelperMethods

  context "with empty arguments" do
    before(:each) { invoke! } 
  
    it "creates the app on the working directory" do
      inside(sandbox) { verify_expected_files! }
    end
  end
  
  context "with a given project name" do
    before(:each) do
      @path = invoke!("my_awesome_app")
    end

    it "creates the app on the given directory" do
      inside(@path) { verify_expected_files! }
    end
  end
  
  context "with the --gemfile option" do
    before(:each) do 
      @path = invoke!("app", "--gemfile")
    end
  
    it "creates a basic Gemfile" do
      inside(@path) do
        verify_expected_files!
        File.exists?("Gemfile").should be_true
      end
    end
  end
  
  context "with the --views option" do
    before(:each) do 
      @path = invoke!("i_has_views", "--views")
    end
    
    it "sets a public folder with javascripts and stylesheets subfolders" do
      inside(@path) do
        File.exists?("public/javascripts/application.js").should be_true
        File.exists?("public/stylesheets/application.css").should be_true
      end
    end
    
    it "creates a simple erb view" do
      inside(@path) do
        File.exists?("views/index.erb").should be_true
      end
    end
    
  end

  def invoke!(path = nil,*args)
    args = ([path] + args).compact
    ARGV.replace(args)
    
    inside(sandbox) do
      silenced(:stdout) { Showtime::Generator.start }
    end
    path ? File.join(sandbox, path) : sandbox
  end

  def verify_expected_files!
    %W(application.rb Rakefile config.ru spec/spec_helper.rb spec/application_spec.rb).each do |file|
      File.exists?(file).should be_true
    end
  end  
  
end

