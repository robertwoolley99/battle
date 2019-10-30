# in app.#!/usr/bin/env ruby -wKU

require 'sinatra/base'
# require File.join(File.dirname(__FILE__),  'app.rb')
# require 'capybara'
# require 'capybara/rspec'
# require 'rspec'



class Battle < Sinatra::Base
  get '/' do
  erb :index
  end
  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
  erb :play
  end



  # start the server if Ruby file executed directly
  run! if app_file == $0
end

# Capybara.app = Battle
