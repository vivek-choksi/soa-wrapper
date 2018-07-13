module SoaWrapper
  class ConfigGenerator < Rails::Generators::Base

    source_root File.expand_path('../templates', __dir__)

    # def create_initializer_file
    #   create_file "config/initializers/soa_wrapper_initializer.yml", template "config.rb"
    # end

    def copy_initializer
      template "config.rb", "config/initializers/soa_wrapper_initializer.yml"
    end
  end
end
