# Load the Rails application.
require File.expand_path('../application', __FILE__)

require 'pp'
require 'open-uri'
require 'json'
require 'csv'
require 'pearson'
require 'gon'

BOROUGH_HASH = {"bronx"=>1, "brooklyn"=>2, "manhattan"=>3, "queens"=>4, "staten island"=>5}

# Initialize the Rails application.
Rails.application.initialize!

