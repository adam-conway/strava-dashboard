require "rails_helper"

describe 'user sees last n rides' do
  scenario 'they log in and see the homepage with their rides' do
    VCR.use_cassette("Seeing-profile-page") do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/profile'
      expect(current_path).to eq('/profile')
      expect(page).to have_content('Your profile information')

      expect(page).to have_css(".first_name")
      expect(page).to have_css(".last_name")
      expect(page).to have_css(".city")
      expect(page).to have_css(".state")
      expect(page).to have_css(".created_at")
      expect(page).to have_css(".follower_count")
      expect(page).to have_css(".friend_count")
      within(first('.club')) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".member_count")
        expect(page).to have_css(".sport_type")
        expect(page).to have_css(".club_link")
      end
    end
  end
end
