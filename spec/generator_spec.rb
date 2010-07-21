require 'spec_helper'

describe Showtime::Generator do
    
  context "with empty arguments" do
    before :each do 
      invoke!
    end
  
    it "creates the app on the working directory" do
      inside sandbox do
        File.exists?("application.rb").should be_true
        File.exists?("Rakefile").should be_true
      end
    end
  end
  
  context "with a given project name" do
    before(:each) do
      @path =  invoke!("my_awesome_app")
    end

    it "creates the app on the given directory" do
      inside @path do
        File.exists?("application.rb").should be_true
        File.exists?("Rakefile").should be_true
      end
    end
  end
  
  context "with the --heroku option" do
    before :each do 
      @path = invoke!("some_heroku_app", "--heroku")
    end
  
    it "creates the .gems file for deployment" do
      inside @path do
        File.exists?(".gems").should be_true
      end
    end
  end


  
  def invoke!(path = nil,*args)
    args = ([path] + args).compact
    path = path ? File.join(sandbox, path) : sandbox
    ARGV.replace(args)
    
    inside sandbox do
      capture(:stdout) { Showtime::Generator.start }
    end
    
    path
  end
  
end

