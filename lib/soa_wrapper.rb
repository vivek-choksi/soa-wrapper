require "soa_wrapper/version"
require 'yaml'
require 'ostruct'
require 'excon'

module SoaWrapper
  def config
    config = OpenStruct.new(YAML.load_file(Rails.root.join("config", "soa_wrapper.yml")))
    @response = Excon.get(config.Eko['path'])
  end
end
