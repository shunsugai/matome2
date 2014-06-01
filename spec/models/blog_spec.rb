require 'spec_helper'

describe Blog do
  let(:blog) { FactoryGirl.create(:blog) }

  specify 'valid object' do
    expect(blog).to be_valid
  end

  %w(name url rss).each do |attribute|
    specify "#{attribute} must not be empty" do
      blog[attribute] = ''
      expect(blog).not_to be_valid
      expect(blog.errors[attribute]).to be_present
    end
  end
end
