require 'spec_helper'

describe 'Articles' do
  describe 'GET /articles.json' do
    before(:each) do
      @category = FactoryGirl.create(:category)
      @blog     = FactoryGirl.create(:blog, category: @category)
      @article  = FactoryGirl.create(:article, blog: @blog)
      get '/articles.json', format: :json
    end

    it 'response 200 OK' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'item have title' do
      json = JSON.parse(response.body)
      expect(json['entries'][0]['title']).to eq('This is test entry')
    end

    it 'item have link' do
      json = JSON.parse(response.body)
      expect(json['entries'][0]['link']).to eq('http://example.com/this_is_test_entry_001')
    end
  end
end
