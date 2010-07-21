module HelperMethods

  # Stealed from http://github.com/wycats/thor/blob/master/spec/spec_helper.rb#L32
  def silenced(stream)
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

  def inside(path)
    FileUtils.cd(path) { yield }
  end

end