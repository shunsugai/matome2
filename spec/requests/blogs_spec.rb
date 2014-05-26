require 'spec_helper'

describe 'Blogs' do
  describe 'GET /blogs.json' do
    before(:each) do
      @category = FactoryGirl.create(:category)
      @blog     = FactoryGirl.create(:blog, category: @category)
      get '/blogs.json', format: :json
    end

    it 'response 200 OK' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'item have name' do
      json = JSON.parse(response.body)
      expect(json['blogs'][0]['name']).to eq('test_blog')
    end

    it 'item have url' do
      json = JSON.parse(response.body)
      expect(json['blogs'][0]['url']).to eq('http://example.com')
    end
  end

  describe 'GET /categories/:category_id/blogs.json' do
    before(:each) do
      @category = FactoryGirl.create(:category)
      @blog     = FactoryGirl.create(:blog, category: @category)
      get "/categories/#{@category.id}/blogs.json", format: :json
    end

    it 'response 200 OK' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'item have name' do
      json = JSON.parse(response.body)
      expect(json['blogs'][0]['name']).to eq('test_blog')
    end

    it 'item have url' do
      json = JSON.parse(response.body)
      expect(json['blogs'][0]['url']).to eq('http://example.com')
    end
  end
end
