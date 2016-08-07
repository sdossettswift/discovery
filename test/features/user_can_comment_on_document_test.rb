require "test_helper"

class UserCanCommentOnDocumentTest < Capybara::Rails::TestCase

setup do
  User.create! email: "attorney@example.com", username: "attorney1", password: "example"
  @matter =Matter.create! cause_number: "12345678", year: "2016"
  Role.create! name: "Attorney"
   visit sign_in_path
   fill_in('Username', :with => 'attorney1')
   fill_in('Password', :with => 'example')
   click_button('Sign In')
    visit matter_path(@matter)
    fill_in('Title', :with => 'Tax Return')
    fill_in('Status', :with => '1')
    fill_in('Description', :with => '2015 Tax Return')
    click_button('Create Doc')
 end

  test "Can Comment on Document" do
    visit matter_path(@matter)
    click_link("See Detail")
    fill_in('Comment', :with => 'Test Comment')
    click_button('Create Client comment')
    assert_content ("Comment Added")
  end

end
