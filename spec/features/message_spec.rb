require "rails_helper"
feature "user create a message" do
  before(:each) do
      visit new_user_path
      fill_in "user[username]", with: "Kenny"
      click_button "Sign In"
  end
  scenario "successfully creates a new message" do
    visit user_path(user)
    # fill_in "message[content]", with: "this is a message"
    # click_button "Create User"
    # expect(page).to have_content "User successfully created"
  end
end