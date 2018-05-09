require "rails_helper"

describe 'user sees last 10 rides' do
  scenario 'they log in and see the homepage with their rides' do
    VCR.use_cassette("Seeing-ten-most-recent-rides") do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/'
      expect(current_path).to eq('/')
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
end
