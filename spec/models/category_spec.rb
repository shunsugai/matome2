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

  specify 'name must be less than or equal to 20 characters' do
    category.name = 'あ'*21
    expect(category).not_to be_valid
    expect(category.errors['name']).to be_present
  end
end
