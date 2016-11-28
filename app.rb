require('sinatra')
require('sinatra/reloader')
require('./lib/triangle.rb')
also_reload('lib/**/*.rb')
