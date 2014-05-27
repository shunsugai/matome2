require 'spec_helper'

describe 'Articles' do
  describe 'GET /articles.json' do
    before do
      @article  = FactoryGirl.create(:article)
      get '/articles.json', format: :json
    end

    let(:json) { JSON.parse(response.body) }

    it 'response 200 OK' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'item have title' do
      expect(json['entries'][0]['title']).to eq('This is test entry')
    end

    it 'item have link' do
      expect(json['entries'][0]['link']).to eq('http://example.com/this_is_test_entry_001')
    end
  end

  describe 'GET /categories/:category_id/article.json' do
    before do
      @article = FactoryGirl.create(:article)
      get "/categories/#{@article.blog.category_id}/articles.json", format: :json
    end

    let(:json) { JSON.parse(response.body) }

    it 'response 200 OK' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'item have title' do
      expect(json['entries'][0]['title']).to eq('This is test entry')
    end

    it 'item have link' do
      expect(json['entries'][0]['link']).to eq('http://example.com/this_is_test_entry_001')
    end    
  end

  describe 'GET /blogs/:blog_id/articles.json' do
    before do
      @article = FactoryGirl.create(:article)
      get "/blogs/#{@article.blog.id}/articles.json", format: :json
    end

    let(:json) { JSON.parse(response.body) }

    it 'response 200 OK' do
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it 'item have title' do
      expect(json['entries'][0]['title']).to eq('This is test entry')
    end

    it 'item have link' do
      expect(json['entries'][0]['link']).to eq('http://example.com/this_is_test_entry_001')
    end
  end
end
