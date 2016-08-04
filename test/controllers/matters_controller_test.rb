require "test_helper"

describe MattersController do
  it "should get new" do
    get matters_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get matters_create_url
    value(response).must_be :success?
  end

  it "should get update" do
    get matters_update_url
    value(response).must_be :success?
  end

end
