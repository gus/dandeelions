# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

# require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rubygems'
require 'rake'
# require 'rake/testtask'
# require 'rake/rdoctask'
# 
# require 'tasks/rails'

begin
  require 'vlad'
  require 'vlad/core'
  require 'vlad/git'
  require 'config/deploy/base'
rescue LoadError => e
  puts "Unable to load Vlad the Deployer - #{e.message}."
end