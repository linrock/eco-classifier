gem 'minitest'
require 'minitest/autorun'

$:.unshift File.expand_path('../../lib', __FILE__)
require 'eco_classifier'

def read_fixture(path)
  open("#{File.dirname(__FILE__)}/fixtures/#{path}").read
end
