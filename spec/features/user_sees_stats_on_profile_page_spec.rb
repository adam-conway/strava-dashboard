require "rails_helper"

describe 'user sees statistics' do
  scenario 'they log in and visit /profile to see statistics' do
    VCR.use_cassette("Seeing-statistics") do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/profile'
      expect(current_path).to eq('/profile')
      expect(page).to have_content('Your athlete stats')

      expect(page).to have_css(".last_4_weeks")
      within(".last_4_weeks") do
        expect(page).to have_css('.cycling')
        within('.cycling') do
          expect(page).to have_css(".number_of_rides")
          expect(page).to have_css(".distance_ridden")
          expect(page).to have_css(".bike_moving_time")
          expect(page).to have_css(".bike_elapsed_time")
          expect(page).to have_css(".bike_elevation_gain")
        end

        expect(page).to have_css('.running')
        within('.running') do
          expect(page).to have_css(".number_of_runs")
          expect(page).to have_css(".distance_ran")
          expect(page).to have_css(".run_moving_time")
          expect(page).to have_css(".run_elapsed_time")
          expect(page).to have_css(".run_elevation_gain")
        end

        expect(page).to have_css('.swimming')
        within('.swimming') do
          expect(page).to have_css(".number_of_swims")
          expect(page).to have_css(".distance_swam")
          expect(page).to have_css(".swim_moving_time")
          expect(page).to have_css(".swim_elapsed_time")
        end
      end

      expect(page).to have_css(".ytd")
      within(".ytd") do
        expect(page).to have_css('.cycling')
        within('.cycling') do
          expect(page).to have_css(".number_of_rides")
          expect(page).to have_css(".distance_ridden")
          expect(page).to have_css(".bike_moving_time")
          expect(page).to have_css(".bike_elapsed_time")
          expect(page).to have_css(".bike_elevation_gain")
        end

        expect(page).to have_css('.running')
        within('.running') do
          expect(page).to have_css(".number_of_runs")
          expect(page).to have_css(".distance_ran")
          expect(page).to have_css(".run_moving_time")
          expect(page).to have_css(".run_elapsed_time")
          expect(page).to have_css(".run_elevation_gain")
        end

        expect(page).to have_css('.swimming')
        within('.swimming') do
          expect(page).to have_css(".number_of_swims")
          expect(page).to have_css(".distance_swam")
          expect(page).to have_css(".swim_moving_time")
          expect(page).to have_css(".swim_elapsed_time")
        end
      end
      expect(page).to have_css(".all_time")
      within(".all_time") do
        expect(page).to have_css('.cycling')
        within('.cycling') do
          expect(page).to have_css(".biggest_ride_distance")
          expect(page).to have_css(".biggest_climb_elevation_gains")

          expect(page).to have_css(".number_of_rides")
          expect(page).to have_css(".distance_ridden")
          expect(page).to have_css(".bike_moving_time")
          expect(page).to have_css(".bike_elapsed_time")
          expect(page).to have_css(".bike_elevation_gain")
        end

        expect(page).to have_css('.running')
        within('.running') do
          expect(page).to have_css(".number_of_runs")
          expect(page).to have_css(".distance_ran")
          expect(page).to have_css(".run_moving_time")
          expect(page).to have_css(".run_elapsed_time")
          expect(page).to have_css(".run_elevation_gain")
        end

        expect(page).to have_css('.swimming')
        within('.swimming') do
          expect(page).to have_css(".number_of_swims")
          expect(page).to have_css(".distance_swam")
          expect(page).to have_css(".swim_moving_time")
          expect(page).to have_css(".swim_elapsed_time")
        end
      end
    end
  end
end
