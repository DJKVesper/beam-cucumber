# Automation gems
require 'rspec/expectations'
require 'rspec'
require 'watir-webdriver'
require 'headless'

# Utility gems
require 'os'
require 'pry'
require 'singleton'
require 'yaml'
require 'watir-scroll'
require 'httparty'

# Load the modules

# Load the page classes
require File.dirname(__FILE__) + '/pages/generic.rb'
Dir[File.dirname(__FILE__) + '/pages/*.rb'].each { |f| require f }

# Load the credential details
CREDENTIALS = YAML.load_file 'features/support/data/credentials.yml'

# Set up World to include the RSpec::Matchers module
World(RSpec::Matchers)
