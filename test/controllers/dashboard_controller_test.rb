require "test_helper"

describe DashboardController do
  it "should get hello" do
    get dashboard_hello_url
    value(response).must_be :success?
  end

end
