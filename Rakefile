# Contains rake tasks to make it easier to run cucumber from terminal.
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rubocop/rake_task'
require 'rake/clean'

namespace :features do
  Cucumber::Rake::Task.new(:default) do |t|
    t.profile = 'default'
  end
 
  Cucumber::Rake::Task.new(:headless) do |t|
    t.profile = 'headless'
  end 
 
  task ci: [:headless]
end

task default: :all
