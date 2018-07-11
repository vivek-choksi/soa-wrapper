require "soa_wrapper/version"
require 'yaml'
require 'ostruct'
require 'excon'

module SoaWrapper
  def self.soa_wrapper
    puts "Hello World"
    config = OpenStruct.new(YAML.load_file('soa_config.yml'))
    url = config.Eko['path']
    response = Excon.get(url)
    puts response.body
  end
end
