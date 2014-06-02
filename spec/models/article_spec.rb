require 'spec_helper'

describe Article do
  let(:article) { FactoryGirl.create(:article) }

  specify 'valid object' do
    expect(article).to be_valid
  end

  %w(title url).each do |attribute|
    specify "#{attribute} must not be empty" do
      article[attribute] = ''
      expect(article).not_to be_valid
      expect(article.errors[attribute]).to be_present
    end
  end

  specify 'url must be less than or equal to 2000 characters' do
    article.url = 'http://'+'a'*1994
    expect(article).not_to be_valid
    expect(article.errors['url']).to be_present
  end

  describe 'url format must be valid' do
    specify 'allows http' do
      article.url = 'http://example.com'
      expect(article).to be_valid
    end

    specify 'allows https' do
      article.url = 'https://example.com'
      expect(article).to be_valid
    end

    specify 'do not allows other protcol' do
      article.url = 'ftp://example.com'
      expect(article).not_to be_valid
      expect(article.errors['url']).to be_present
    end
  end

  specify 'title must be less than or equal to 100 characters' do
    article.title = 'あ'*101
    expect(article).not_to be_valid
    expect(article.errors['title']).to be_present
  end

  specify 'posted_at must be earlier than now' do
    article.posted_at = 1.second.since
    expect(article).not_to be_valid
    expect(article.errors['posted_at']).to be_present    
  end

end
