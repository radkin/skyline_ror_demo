require 'rails_helper'
describe "post a Product route", :type => :request do
before do
    post '/api/v1/Products', params: { :Product => 'test_Product', :answer => 'test_answer', :service => 'test_service', :number => 2, :letter => 'a' }
  end
it 'returns the Product' do
    expect(JSON.parse(response.body)['Product']).to eq('test_Product')
  end
it 'returns the Product\'s answer' do
    expect(JSON.parse(response.body)['answer']).to eq('test_answer')
  end
it 'returns the Product\'s service' do
    expect(JSON.parse(response.body)['service']).to eq('test_service')
  end
it 'returns the Product\'s letter' do
    expect(JSON.parse(response.body)['letter']).to eq('a')
  end
it 'returns the Product\'s number' do
    expect(JSON.parse(response.body)['number']).to eq(2)
  end
it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
