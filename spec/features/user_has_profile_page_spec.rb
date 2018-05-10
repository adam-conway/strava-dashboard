require "rails_helper"

describe 'user sees profile information' do
  scenario 'they log in and visit /profile to see profile info' do
    VCR.use_cassette("Seeing-profile-page") do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/profile'
      expect(current_path).to eq('/profile')
      expect(page).to have_content('Your profile information')

      expect(page).to have_css(".name")
      expect(page).to have_css(".location")
      expect(page).to have_css(".profile_creation")
      expect(page).to have_css(".friend_count")
      expect(page).to have_css(".follower_count")
    end
  end
end
