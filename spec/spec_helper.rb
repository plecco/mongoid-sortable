$:.unshift(File.dirname(__FILE__) + '/../lib')
plugin_test_dir = File.dirname(__FILE__)

require 'rubygems'
require 'bundler/setup'

require 'rspec'
require 'logger'

require 'active_support'
require 'active_model'
require 'mongoid'

Dir["./spec/support/**/*.rb"].each {|f| require f}

ENV["MONGOID_ENV"] = "test"
Mongoid.load!(plugin_test_dir + "/db/mongoid.yml")

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
end