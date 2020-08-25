require 'rails_helper'
describe "delete Product route" do
    before(:each) do
        @Product_one = create(:random_Product)
        @Product_two = create(:random_Product)
    end
it 'should delete the Product' do
get "/api/v1/Products"
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body)).to eq([YAML.load(@Product_one.to_json),YAML.load(@Product_two.to_json),])
delete "/api/v1/Products/#{@Product_one.id}"
      expect(response.status).to eq(204)
get "/api/v1/Products"
      expect(JSON.parse(response.body)).to eq([YAML.load(@Product_two.to_json)])
    end
end
