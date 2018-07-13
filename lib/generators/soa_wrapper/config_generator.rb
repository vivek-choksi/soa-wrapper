module SoaWrapper
  class ConfigGenerator < Rails::Generators::Base
    def create_initializer_file
      create_file "config/initializers/soa_wrapper_initializer.rb", "# Add initialization content here"
    end
  end
end
