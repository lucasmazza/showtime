require 'rubygems'
require 'showtime'
require 'fileutils'
require 'stringio'

RSpec.configure do |config|

  def sandbox
    "./output/showtime"
  end

  FileUtils.rm_rf(sandbox)
  FileUtils.mkdir_p(sandbox)  
end