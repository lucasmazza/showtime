module Showtime
  class Generator < Thor::Group
    include Thor::Actions
    
    argument :name, :optional => true, :default => '.'
    class_options :heroku => :boolean
    def self.source_root
      File.dirname(__FILE__)
    end
    
    def create_application_file
      template("templates/application.rb", "#{name}/application.rb")
    end
    def create_rakefile
      template("templates/Rakefile", "#{name}/Rakefile")
    end
    def create_config_ru
      template("templates/config.ru", "#{name}/config.ru")
    end
    
    def create_lib_folder
      empty_directory("#{name}/lib")
    end

    def create_spec_folder_and_helper
      directory("templates/spec", "#{name}/spec")
    end
    
    def create_gem_dependency_strategy
      if options.heroku?
        template("templates/.gems", "#{name}/.gems")
      end
    end
    
  end
end