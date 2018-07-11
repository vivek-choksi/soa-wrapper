require "soa_wrapper/version"
require 'yaml'
require 'ostruct'
require 'excon'

module SoaWrapper
  def self.soa_wrapper
    puts "Hello World"
    config = OpenStruct.new(YAML.load_file(Rails.root.join("config", "soa_wrapper.yml")))
    url = config.Eko['path']
    response = Excon.get(url)
    puts response.body
  end
end
