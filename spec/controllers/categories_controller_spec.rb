require 'spec_helper'

describe CategoriesController do

  describe "GET 'blogs'" do
    it "returns http success" do
      get 'blogs'
      response.should be_success
    end
  end

  describe "GET 'articles'" do
    it "returns http success" do
      get 'articles'
      response.should be_success
    end
  end

end
