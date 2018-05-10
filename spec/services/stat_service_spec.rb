require 'rails_helper'

describe StatService do
  subject { StatService.new(ENV['strava_my_token']) }

  context 'initialize' do
    it 'exists' do
      expect(subject).to be_an StatService
    end
  end

  context 'instance methods' do
    context '#raw_profile_data' do
      it 'returns hash of profile data' do
        VCR.use_cassette('profile-service') do
          stat = subject.raw_stat_data
          expect(stat).to be_a Hash

          expect(stat).to have_key(:biggest_ride_distance)
          expect(stat[:biggest_ride_distance]).to be_a Integer

          expect(stat).to have_key(:biggest_climb_elevation_gains)
          expect(stat[:biggest_climb_elevation_gains]).to be_a Float

          expect(stat).to have_key(:recent_ride_totals)
          expect(stat[:recent_ride_totals]).to be_a Hash

          expect(stat[:recent_ride_totals]).to have_key(:count)
          expect(stat[:count]).to be_an Integer
          expect(stat[:recent_ride_totals]).to have_key(:distance)
          expect(stat[:distance]).to be_a Float
          expect(stat[:recent_ride_totals]).to have_key(:moving_time)
          expect(stat[:moving_time]).to be_an Integer
          expect(stat[:recent_ride_totals]).to have_key(:elapsed_time)
          expect(stat[:elapsed_time]).to be_an Integer
          expect(stat[:recent_ride_totals]).to have_key(:elevation_gain)
          expect(stat[:elevation_gain]).to be_an Integer
        end
      end
    end
  end
end
