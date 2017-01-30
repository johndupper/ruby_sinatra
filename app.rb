require 'rubygems'
require 'sinatra'

# html template
require 'haml'
set :haml {
  :format => :html5
}


get '/' do
  # gets the user's ip address
  @ip = request.env['REMOTE_ADDR'].split(',').first
  # render template
  haml :index
end
