# in app.#!/usr/bin/env ruby -wKU

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

  # start the server if Ruby file executed directly
  run! if app_file == $0
end
