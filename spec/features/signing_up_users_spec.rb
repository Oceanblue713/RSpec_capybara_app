require 'rails_helper'

RSpec.feature "Signup user" do
    scenario "with valid credentials" do
        visit "/"
        click_link "Sign up"
        fill_in "Email", with: "User@example.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Sign up"

        expect(page).to have_content("You have signed up sucessfully.")
    end

    scenario "with invalid credentials" do 
        visit "/"
        click_link "Sign up"
        fill_in "Email", with: ""
        fill_in "Password", with: ""
        fill_in "Password confirmation", with: ""
        click_button "Sign up"

        #git aexpect(page).to have_content("You have not signed up sucessfully.")
    end
end
