require "rails_helper"

describe 'user logs in using Strava' do
  scenario 'they log in and see the homepage with their email' do
    stub_omniauth
    visit root_path
    expect(page).to have_link('Log in with Strava')
    click_link 'Log in with Strava'
    expect(page).to have_content('adam.n.conway@gmail.com')
    expect(page).to have_link('Logout')
  end

  scenario 'they can log in and log out' do
    stub_omniauth
    visit root_path
    expect(page).to have_link('Log in with Strava')
    click_link 'Log in with Strava'
    click_link 'Logout'
    expect(page).to_not have_content('adam.n.conway@gmail.com')
  end

end
