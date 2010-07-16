module Showtime
  class Generator < Thor::Group
    include Thor::Actions
        
    def self.source_root
      File.dirname(__FILE__)
    end
    
  end
end