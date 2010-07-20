require 'spec_helper'

  describe Showtime::Generator do
    describe "with empty arguments" do
      before(:all) do 
        ARGV.replace([])
        FileUtils.cd(SANDBOX) do
          capture(:stdout) { Showtime::Generator.start }
        end
      end
      after(:all) do
        FileUtils.rm_rf(SANDBOX)
      end
      
      it "creates the app on the working directory" do
        FileUtils.cd(SANDBOX) do
          File.exists?("application.rb").should be_true
          File.exists?("Rakefile").should be_true
      end
    end
  end
end

