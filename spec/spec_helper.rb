require 'rubygems'
require 'bundler/setup'

require "mocha_standalone"
require "bourne"

require_relative '../simulator/simulator.rb'

RSpec.configure do |config|
  config.mock_with :mocha
end
