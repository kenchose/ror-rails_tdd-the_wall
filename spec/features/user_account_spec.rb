require "rails_helper"
feature "user creates an account" do
  scenario "successfully creates a new user account" do
    visit new_user_path
    fill_in "user[username]", with: "kenchose"
    click_button "Sign In"
    expect(page).to have_content "Welcome kenchose"
  end
end