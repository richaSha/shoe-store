require 'spec_helper'
require 'pry'
describe 'Card' do

  it 'validates the uniqueness of stores' do
    store = Store.create({name: 'john FLUEVOG SHOES'})
    expect(store.name).to eq ('JOHN FLUEVOG SHOES')
  end

end
