module Showtime
  class Generator < Thor::Group
    include Thor::Actions

    argument :name, :optional => true, :default => '.', :desc => "Your application folder"
    class_option :gemfile, :type => :boolean, :desc => "Create a Gemfile inside your application folder."
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
      empty_directory("#{name}/spec")
      template("spec/spec_helper.rb", "#{name}/spec/spec_helper.rb")
      template("spec/application_spec.rb", "#{name}/spec/application_spec.rb")
    end
    
    def create_gemfile
      if options.gemfile?
        template("Gemfile", "#{name}/Gemfile")
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
