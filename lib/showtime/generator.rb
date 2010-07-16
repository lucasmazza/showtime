module Showtime
  class Generator < Thor
    include Thor::Actions
    
    argument :name
    
    def self.source_root
      File.dirname(__FILE__)
    end
    
  end
end