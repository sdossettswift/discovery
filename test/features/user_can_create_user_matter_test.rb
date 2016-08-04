require "test_helper"

class UserCanCreateUserMatterTest < Capybara::Rails::TestCase
  setup do
   User.create! email: "attorney@example.com", username: "attorney1", password: "example"
   Matter.create! cause_number: "12345678"
   Role.create! name: "Attorney"
 end

  test "Can Create UserMatter" do
     visit new_user_matter_path
     check('12345678')
     check('attorney1')
     check('Attorney')
     click_button('Create User matter')
    assert_content ("Dashboard")
  end
end
