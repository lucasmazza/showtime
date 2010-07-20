$TESTING = true
SANDBOX = "./output/showtime"

require 'rubygems'
require 'showtime'
require 'fileutils'
require 'stringio'

Spec::Runner.configure do |config|

  Thor::Base.shell = Thor::Shell::Basic
  FileUtils.rm_rf(SANDBOX)
  FileUtils.mkdir_p(SANDBOX)

  def capture(stream)
    begin
      stream = stream.to_s
      eval "$#{stream} = StringIO.new"
      yield
      result = eval("$#{stream}").string
    ensure
      eval("$#{stream} = #{stream.upcase}")
    end

    result
  end

end