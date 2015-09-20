require 'rubygems'
require 'bundler/setup'

require "mocha_standalone"
require "bourne"

require 'population_growth_simulator'

RSpec.configure do |config|
  config.mock_with :mocha
end
