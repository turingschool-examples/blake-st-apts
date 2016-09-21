require 'rails_helper'

RSpec.feature "When someone visits '/renters'" do
  scenario "they see a list of renters with their apartments" do
    renter1 = Renter.create(first_name: "Jake", last_name: "Jones")
    renter2 = Renter.create(first_name: "Adam", last_name: "Arroyo")
    Unit.create(name: "1a", renter: renter1)
    Unit.create(name: "1b", renter: renter2)

    visit renters_path

    expect(page).to have_content("Jake Jones: 1a")
    expect(page).to have_content("Adam Arroyo: 1b")
  end
end
