require 'sinatra'

class Site < Sinatra::Base
  set :bind, '0.0.0.0'

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
