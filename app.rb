require 'rubygems'
require 'sinatra'

require 'haml'
set :haml {
  :format => :html5
}

get '/' do
  "Hello World!"
end
