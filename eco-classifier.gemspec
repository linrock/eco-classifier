# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'eco_classifier/version'

Gem::Specification.new do |s|
  s.name = "eco-classifier"
  s.version = EcoClassifier::VERSION
  s.authors = ["Linmiao Xu"]
  s.email = ["lin@robotmoon.com"]

  s.summary = "Classifies chess openings from a list of opening moves"
  s.description = "Classifies chess openings from a list of opening moves"
  s.license = "MIT"

  s.files = `git ls-files -z`.split("\0")

  s.add_development_dependency "rake",     "~> 10.0"
  s.add_development_dependency "minitest", "~> 5.0"
  s.add_development_dependency "pry",      "~> 0.10"
end
