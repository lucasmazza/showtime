module Showtime
  class Generator < Thor::Group
    include Thor::Actions

    argument :name, :optional => true, :default => '.', :desc => "Your application folder"
    class_option :heroku, :type => :boolean, :desc => "builds a .gems file for heroku usage."
    class_option :views, :type => :boolean, :desc => "creates the public/javascripts and public/stylesheets folders, and a sample index.erb view."

    def self.banner
      "showtime [app_name] [options]"
    end

    def self.source_root
      File.join(File.dirname(__FILE__), "templates")
    end
    
    def create_application_file
      template("application.rb", "#{name}/application.rb")
    end
    
    def create_rakefile
      template("Rakefile", "#{name}/Rakefile")
    end
    
    def create_config_ru
      template("config.ru", "#{name}/config.ru")
    end
    
    def create_lib_folder
      empty_directory("#{name}/lib")
    end

    def create_spec_folder_and_helper
      directory("spec", "#{name}/spec")
    end
    
    def create_gem_dependency_strategy
      if options.heroku?
        template(".gems", "#{name}/.gems")
      end
    end
    
    def create_views_and_public_folders
      if options.views?
        directory("views", "#{name}/views")
        directory("public", "#{name}/public")
      end
    end
    
  end
end
