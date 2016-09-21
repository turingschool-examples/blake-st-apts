require 'rails_helper'

RSpec.feature "When someone visits '/units'" do
  scenario "they see a list of units" do
    Unit.create(name: "1a")
    Unit.create(name: "1b")

    visit units_path

    expect(page).to have_content("1a")
    expect(page).to have_content("1b")
  end
end
