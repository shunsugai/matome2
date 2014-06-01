require 'spec_helper'

describe Blog do
  let(:blog) { FactoryGirl.create(:blog) }

  specify 'valid object' do
    expect(blog).to be_valid
  end

  %w(name url rss).each do |attribute|
    it { expect(blog).to respond_to(attribute.to_sym) }

    specify "#{attribute} must not be empty" do
      blog[attribute] = ''
      expect(blog).not_to be_valid
      expect(blog.errors[attribute]).to be_present
    end
  end

  specify 'name must be less than or equal to 50 characters' do
    blog.name = 'あ'*51
    expect(blog).not_to be_valid
    expect(blog.errors['name']).to be_present
  end

end
