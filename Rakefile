# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require './lib/delegate'

begin
  require 'bundler'
  require 'motion/project/template/gem/gem_tasks'
  Bundler.require
rescue LoadError
end

require 'bubble-wrap/all'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'delegate'
end
