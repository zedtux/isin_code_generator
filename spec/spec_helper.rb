# encoding: utf-8
require "simplecov"
SimpleCov.start

ROOT_PATH = File.join(File.dirname(__FILE__), '..')
$:.unshift ROOT_PATH unless $:.include? ROOT_PATH

require "rubygems"
require "rspec"

require "lib/isin_code_generator"
