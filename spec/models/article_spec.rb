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
    article.url = 'a'*2001
    expect(article).not_to be_valid
    expect(article.errors['url']).to be_present
  end

end
