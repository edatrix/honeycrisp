require 'rails_helper'

feature "User yums an apple" do
  xscenario "they see the homepage" do
    visit root_path
    click_button "yum"

    expect
  end
end