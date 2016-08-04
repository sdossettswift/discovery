require "test_helper"

class UserCanCreateUserMatterTest < Capybara::Rails::TestCase
  setup do
   User.create! email: "attorney@example.com", username: "attorney1", password: "example"
   Matter.create! cause_number: "12345678", year: "2016"
   Role.create! name: "Attorney"
 end

  test "Can Create UserMatter" do
     visit new_user_matter_path
     select('12345678')
     select('attorney1')
     click_button('Create User matter')
     assert_content ("Dashboard")
  end
end
