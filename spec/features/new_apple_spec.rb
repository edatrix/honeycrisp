require 'rails_helper'

feature "User creates a new apple" do
  scenario 'they see the foobar on the page' do
    visit root_path

    fill_in "apple_type", :with => "big apple"
    click_button "add a new apple"

    expect(page).to have_text "big apple"
  end
end