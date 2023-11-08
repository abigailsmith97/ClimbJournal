# spec/features/create_new_log_entry_spec.rb

require 'rails_helper'

RSpec.feature "Create New Log Entry", type: :feature do
  scenario "User creates a new log entry" do
    user = User.create(email: 'test@example.com', password: 'password123')
      
      # Visit the login page
    visit new_user_session_path
  
      # Fill in the email and password fields
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'password123'
  
      # Click the "Log in" button
    click_button 'Log in'
  
      # Expect to see a success message
    expect(page).to have_text('Signed in successfully')

    click_link "Log a New Outdoor Climbing Session"

    expect(page).to have_text('When did you go climbing?')

    # Fill in the date field
    fill_in 'When did you go climbing?', with: '2023-11-08'

    # Select climbing type
    select 'Bouldering', from: 'Select Climbing Style'

    # Fill in the location field
    fill_in 'Where did you go climbing?', with: 'Kendal, UK'


    # Click submit button (assuming there is a submit button on the form)
    click_button 'Save Climb'

    
    expect(page).to have_content('Climb logged successfully!') 
    expect(page).to have_content('Kendal, UK') 
    expect(page).to have_content('Bouldering') 


  end
end
