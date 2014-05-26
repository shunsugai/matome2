require 'spec_helper'

describe 'Categories' do
  describe 'GET /categories.json' do
    before(:each) do
      @category = FactoryGirl.create(:category)
      get '/categories.json', format: :json
    end

    it 'response 200 OK' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'item have name' do
      json = JSON.parse(response.body)
      expect(json['categories'][0]['name']).to eq('test')
    end
  end
end
