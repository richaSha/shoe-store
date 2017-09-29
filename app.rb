require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/store') do
  @stores = Store.order(:id)
  erb(:store)
end

get('/brand') do
  @brands = Brand.order(:id)
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
  erb(:brand_detail)
end

delete('/store/:id') do
  store_id = params[:id].to_i
  Store.where(id: store_id).destroy_all
  redirect to('/store')
end

delete('/brand/:id') do
  brand_id = params[:id].to_i
  Brand.where(id: brand_id).destroy_all
  redirect to('/brand')
end

patch ('/store/edit/:id') do
  store_id = params[:id]
  store_name = params.fetch(store_id).strip
  if store_name != ""
    Store.update(store_id.to_i , {:name => store_name})
  end
  redirect to('/store')
end

patch ('/brand/edit/:id') do
  brand_id = params[:id]
  brand_name = params.fetch(brand_id).strip
  if brand_name != ""
    Brand.update(brand_id.to_i , {:name => brand_name})
  end
  redirect to('/brand')
end

get('/store/:id') do
  store_id = params[:id].to_i
  @store = Store.find(store_id)
  @brands = Brand.all()
  erb(:store_detail)
end

post('/add_brand/:id') do
  store_id = params[:id].to_i
  brand_id = params.fetch('new_brand')
  @store = Store.find(store_id)
  if brand_id != ""
    new_brand = Brand.find(brand_id.to_i)
    @store.brands.push(new_brand)
  end
  @brands = Brand.all()
  erb(:store_detail)
end

get('/brand/:id') do
  binding.pry
  brand_id = params[:id].to_i
  @brand = Brand.find(brand_id)
  @stores = Store.all()
  erb(:brand_detail)
end

post('/add_store/:id') do
  binding.pry
   brand_id = params[:id].to_i
   store_id= params.fetch('new_store')
  @brand = Brand.find(brand_id)
  if store_id != ""
    new_store = Store.find(store_id.to_i)
    @brand.stores.push(new_store)
  end
  @stores = Store.all()
  erb(:brand_detail)
end
