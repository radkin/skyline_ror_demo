require 'rails_helper'
describe "get all Products route", :type => :request do
  let!(:Products) {FactoryBot.create_list(:random_Product, 20)}
before {get '/api/v1/Products'}
it 'returns all Products' do
    expect(JSON.parse(response.body).size).to eq(20)
  end
it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
