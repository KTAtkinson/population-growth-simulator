require 'rubygems'
require 'bundler/setup'

require "mocha_standalone"
require "bourne"

require 'simulator'

RSpec.configure do |config|
  config.mock_with :mocha
end
