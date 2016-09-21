require 'rails_helper'

RSpec.feature "When I visit '/owners'" do
  scenario "I see a list of owners and the units that they own" do
    owner1 = Owner.create(first_name: "Jessica", last_name: "Jones")
    owner2 = Owner.create(first_name: "Luke", last_name: "Cage")
    owner1.units.create(name: "1a")
    owner1.units.create(name: "1b")
    owner2.units.create(name: "2a")

    visit '/owners'

    within("#owners > li:first") do
      expect(page).to have_content("Jessica Jones")
      expect(page).to have_content("1a")
      expect(page).to have_content("1b")
    end

    within("#owners > li:nth-child(2)") do
      expect(page).to have_content("Luke Cage")
      expect(page).to have_content("2a")
    end
  end
end
