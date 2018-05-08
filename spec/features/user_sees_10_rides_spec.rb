require "rails_helper"

describe 'user sees last 10 rides' do
  scenario 'they log in and see the homepage with their rides' do
    stub_omniauth
    visit root_path
    click_link 'Log in with Strava'

    expect(current_path).to eq('/dashboard')
    expect(page).to have_content('Your last 10 rides')

    expect(page).to have_css(".ride", count: 10)

    within(first(".ride")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".distance")
      expect(page).to have_css(".moving_time")
      expect(page).to have_css(".elapsed_time")
      expect(page).to have_css(".start_date")
    end
  end
end
