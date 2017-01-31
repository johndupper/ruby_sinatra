require 'rubygems'
require 'sinatra'
# html template
require 'haml'
set :haml, { :format => :html5 }


get '/' do
  # gets the user's ip address
  @ip = request.env['REMOTE_ADDR'].split(',').first
  # render template
  haml :index
end


get '/:name' do |n|
  "Hello #{n}!"
end


class Count
  def each
    10.times { |i| yield "#{i} " }
  end
end

get('/count') { Count.new }
