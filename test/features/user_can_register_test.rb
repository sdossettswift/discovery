require "test_helper"

class UserCanRegisterTest < Capybara::Rails::TestCase

  test "Can Sign Up" do
     visit new_user_path
     fill_in('Email', :with => 'sarah1@example.com')
     fill_in('Username', :with => 'Sarah1')
     fill_in('Password', :with => '12345678')
     fill_in('Password confirmation', :with => '12345678')
     click_button('Create User')
    assert_content ("Discovery")
  end
end
