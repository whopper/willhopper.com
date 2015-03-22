require 'sinatra/base'

class Site < Sinatra::Base

  get '/' do
    "Hello, world!"
  end

  not_found do
    status 404
    "Not found!"
  end

  # Start the site if this file is executed directly
  run! if app_file == $0
end
