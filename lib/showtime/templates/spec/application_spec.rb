require 'spec_helper'

describe Sinatra::Application do
  context "responding to GET /" do
    it "should return status code 200"
      get '/'
      last_response.code.should == 200
    end
  end
end