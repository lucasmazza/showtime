require 'spec_helper'

describe Showtime::Generator do
    
  context "with empty arguments" do
    before :each do 
      ARGV.replace([])

      inside SANDBOX do
        capture(:stdout) { Showtime::Generator.start }
      end
    end
  
    it "creates the app on the working directory" do
      inside SANDBOX do
        File.exists?("application.rb").should be_true
        File.exists?("Rakefile").should be_true
      end
    end
  end
  
  context "with a given project name" do
    before(:all) do
      ARGV.replace(["my_awesome_app"])
      @path = File.join(SANDBOX, "my_awesome_app")
      
      inside SANDBOX do
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
end

