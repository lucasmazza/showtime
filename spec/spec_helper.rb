require 'rubygems'
require 'showtime'
require 'fileutils'
require 'stringio'

Spec::Runner.configure do |config|

  def sandbox
    "./output/showtime"
  end

  FileUtils.rm_rf(sandbox)
  FileUtils.mkdir_p(sandbox)  
end