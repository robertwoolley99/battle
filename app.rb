# in app.#!/usr/bin/env ruby -wKU

require 'sinatra/base'
# require File.join(File.dirname(__FILE__),  'app.rb')
# require 'capybara'
# require 'capybara/rspec'
# require 'rspec'



class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end

  # start the server if Ruby file executed directly
  run! if app_file == $0
end

# Capybara.app = Battle
