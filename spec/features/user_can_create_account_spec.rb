require 'rails_helper'

describe "user login", type: feature do
  xit "allows user to create account" do
    username = "funbucket13"
    visit '/'

    click_on "Sign Up to Be a User"

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: username
    fill_in :user_password, with: "test"

    click_on "Create User"

    expect(page).to have_content("Welcome, #{username}!")
  end
end 
