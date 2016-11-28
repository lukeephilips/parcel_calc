require('sinatra')
require('sinatra/reloader')
require('./lib/parcel.rb')
also_reload('lib/**/*.rb')
