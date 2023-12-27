

require 'rails_helper'

RSpec.feature "Create New Log Entry", type: :feature do
  scenario "User creates a new log entry" do
    user = User.create(email: 'test@example.com', password: 'password123')
      
    visit new_user_session_path

    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'password123'

    click_button 'Log in'

    expect(page).to have_text('Signed in successfully')

    click_link "Log a New Outdoor Climbing Session"

    expect(page).to have_text('When did you go climbing?')

    fill_in 'When did you go climbing?', with: '2023-11-08'
    select 'Bouldering', from: 'Select Climbing Style'
    fill_in 'Where did you go climbing?', with: 'Kendal, UK'

    click_button 'Save Climb'

    
    expect(page).to have_content('Climb logged successfully!') 
    expect(page).to have_content('Kendal, UK') 
    expect(page).to have_content('Bouldering') 


  end
end
