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
  brand_name = params.fetch('name')
  brand_price = params.fetch('price')
  brand = Brand.new({:name => brand_name, :price => brand_price})
  brand.save()
  redirect to('/brand')
end

post('/store') do
  store_name = params.fetch('name')
  store = Store.new({:name => store_name})
  store.save()
  redirect to('/store')
end

get ('/store/:id') do
  store_id = params[:id].to_i
  @store = Store.find(store_id)
  @brands = Brand.all()
  erb(:store_detail)
end

get ('/brand/:id') do
  brand_id = params[:id].to_i
  @brand = Brand.find(brand_id)
  erb(:store_detail)
end
