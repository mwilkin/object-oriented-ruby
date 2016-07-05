require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @height = params.fetch('height').to_i
  @width = params.fetch('width').to_i
  @length = params.fetch('length').to_i
  @weight = params.fetch('weight').to_i
  @new_parcel = Parcel.new(@height, @width, @length, @weight)
  @volume = @new_parcel.volume()
  erb(:results)
end
