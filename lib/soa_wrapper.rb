require "soa_wrapper/version"
require 'yaml'
require 'ostruct'
require 'excon'

module SoaWrapper
  def self.soa_wrapper
    config = OpenStruct.new(YAML.load_file(Rails.root.join("config", "soa_wrapper.yml")))
    @response = Excon.get(config.Eko['path'])
  end
end
