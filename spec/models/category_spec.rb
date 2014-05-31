require 'spec_helper'

describe Category do
  let(:category) { FactoryGirl.create(:category) }

  it { expect(category.name).to eq 'test' }
end
