
require 'rails_helper'

RSpec.feature "LogOutdoorClimbs", type: :feature do
  let(:user) { create(:user) } # Assuming you have a User model and a factory for it

  before do
    sign_in user
  end

  scenario "User can create a new log entry" do
    visit root_path

    # Acceptance Criteria 1
    expect(page).to have_link("Log a New Outdoor Climbing Session")

    # Acceptance Criteria 2
    click_link "New Log Entry"
    expect(page).to have_content("Log a New Outdoor Climbing Session")

    # Acceptance Criteria 3
    fill_in "Date", with: "2023-11-07"
    select "Bouldering", from: "Climbing Type"
    fill_in "Location", with: "Burbage South"

    click_button "Add a climb"
    fill_in "Climb Name", with: "Example Climb"
    fill_in "Grade", with: "VS"
    fill_in "Climbing Style", with: "Lead"
    fill_in "Notes", with: "Example Notes"
    fill_in "Climbing Partner", with: "John Doe"
    

    # Acceptance Criteria 4
    click_button "Add a climb"
    fill_in "Climb Name", with: "Second Climb"


    # Acceptance Criteria 5
    click_button "Save Climb"
    expect(page).to have_content("Climb logged successfully!")

    # Acceptance Criteria 6
    visit log_outdoor_climbs_path
    expect(page).to have_content("Example Climb")
    expect(page).to have_content("Second Climb")

    # Acceptance Criteria 7
    logout(user)
    visit log_outdoor_climbs_path
    expect(page).to have_content("You must be logged in to view this page.")
  end
end
