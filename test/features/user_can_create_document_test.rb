require "test_helper"

class UserCanCreateDocumentTest < Capybara::Rails::TestCase
    setup do
     User.create! email: "attorney@example.com", username: "attorney1", password: "example"
     Matter.create! cause_number: "12345678", year: "2016"
     Role.create! name: "Attorney"
   end

 test "Can Create Document" do
    visit new_document_path
    fill_in('Title', :with => 'Tax Return')
    fill_in('Status', :with => '1')
    fill_in('Description', :with => '2015 Tax Return')
    select('12345678')
    click_button('Create Document')
    assert_content ("Dashboard")
 end

end
