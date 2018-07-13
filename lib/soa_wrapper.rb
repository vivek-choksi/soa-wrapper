require "soa_wrapper/version"
require 'yaml'
require 'ostruct'
require 'excon'

module SoaWrapper
  def self.config
    config = OpenStruct.new(YAML.load_file(Rails.root.join("config", "initializers", "soa_wrapper_initializer.yml")))
    @response = Excon.get(config.Eko['path'])
  end

end
