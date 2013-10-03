require 'rubygems'
require 'bundler/setup'

require 'faker'
require 'faker_extensions' # and any other gems you need

RSpec.configure do |config|
  config.failure_color = :red
  config.color = true
end
