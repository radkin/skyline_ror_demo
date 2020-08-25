require 'rails_helper'

describe "PUT /api/v1/Products/:id" do
  before(:each) do
    @Product = create(:random_Product)
  end
  it 'updates a Product' do
    @new_Product = Faker::Lorem.Product
    @new_answer = Faker::Lorem.sentence
    put "/@Product.id>api/v1/Products/#{@Product.id}", params: {Product: @new_Product, answer: @new_answer}
    expect(response.status).to eq(202)
    expect(Product.find(@Product.id).Product).to eq(@new_Product)
    expect(Product.find(@Product.id).answer).to eq(@new_answer)
  end
end
