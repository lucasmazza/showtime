require 'spec_helper'

describe Showtime::Generator do
    
  context "with empty arguments" do
    before :each do 
      ARGV.replace([])

      inside sandbox do
        capture(:stdout) { Showtime::Generator.start }
      end
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
      ARGV.replace(["my_awesome_app"])
      @path = File.join(sandbox, "my_awesome_app")
      
      inside sandbox do
        capture(:stdout) { Showtime::Generator.start }
      end
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
      ARGV.replace(["some_heroku_app","--heroku"])
      @path = File.join(sandbox, "some_heroku_app")
      
      inside sandbox do
        capture(:stdout) { Showtime::Generator.start }
      end
    end
  
    it "creates the .gems file for deployment" do
      inside @path do
        File.exists?(".gems").should be_true
      end
    end
  end
end

