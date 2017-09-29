require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/store') do
  @stores = Store.all()
  erb(:store)
end

get('/brand') do
  @brands = Brand.all()
  erb(:brand)
end

post('/brand') do
  erb(:index)
end
