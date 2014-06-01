require 'spec_helper'

describe Category do
  let(:category) { FactoryGirl.create(:category) }

  specify 'valid object' do
    expect(category).to be_valid
  end

  it { expect(category).to respond_to(:id) }
  it { expect(category).to respond_to(:name) }

  specify 'name must not be empty' do
    category.name = ''
    expect(category).not_to be_valid
  end
end
