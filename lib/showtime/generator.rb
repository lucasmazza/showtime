module Showtime
  class Generator < Thor::Group
    include Thor::Actions
    
    argument :name
    
    def self.source_root
      File.dirname(__FILE__)
    end
    
    def noop
      say "wazzup", :red
    end
    
  end
end