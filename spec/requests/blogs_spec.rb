require 'spec_helper'

describe 'Blogs' do
  describe 'GET /blogs.json' do
    before do
      @blog = FactoryGirl.create(:blog)
      get '/blogs.json', format: :json
    end

    let(:json) { JSON.parse(response.body) }

    it 'response 200 OK' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'item have name' do
      expect(json['blogs'][0]['name']).to eq('test_blog')
    end

    it 'item have url' do
      expect(json['blogs'][0]['url']).to eq('http://example.com')
    end
  end

  describe 'GET /categories/:category_id/blogs.json' do
    before do
      @blog = FactoryGirl.create(:blog)
      get "/categories/#{@blog.category_id}/blogs.json", format: :json
    end

    let(:json) { JSON.parse(response.body) }

    it 'response 200 OK' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'item have name' do
      expect(json['blogs'][0]['name']).to eq('test_blog')
    end

    it 'item have url' do
      expect(json['blogs'][0]['url']).to eq('http://example.com')
    end
  end
end
