require "test_helper"

describe UserMattersController do
  it "should get new" do
    get user_matters_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get user_matters_create_url
    value(response).must_be :success?
  end

  it "should get update" do
    get user_matters_update_url
    value(response).must_be :success?
  end

end
