require 'rails_helper'

describe StatService do
  context 'initialize' do
    it 'exists' do
      user = create(:user)
      subject = StatService.new(user)
      expect(subject).to be_an StatService
    end
  end

  context 'instance methods' do
    context '#raw_profile_data' do
      it 'returns hash of profile data' do
        VCR.use_cassette('stat-service') do
          user = create(:user)
          subject = StatService.new(user)

          stat = subject.raw_stat_data
          expect(stat).to be_a Hash

          expect(stat).to have_key(:biggest_ride_distance)
          expect(stat[:biggest_ride_distance]).to be_a Float

          expect(stat).to have_key(:biggest_climb_elevation_gain)
          expect(stat[:biggest_climb_elevation_gain]).to be_a Float

          expect(stat).to have_key(:recent_ride_totals)
          expect(stat[:recent_ride_totals]).to be_a Hash

          expect(stat[:recent_ride_totals]).to have_key(:count)
          expect(stat[:recent_ride_totals][:count]).to be_an Integer
          expect(stat[:recent_ride_totals]).to have_key(:distance)
          expect(stat[:recent_ride_totals][:distance]).to be_a Float
          expect(stat[:recent_ride_totals]).to have_key(:moving_time)
          expect(stat[:recent_ride_totals][:moving_time]).to be_an Integer
          expect(stat[:recent_ride_totals]).to have_key(:elapsed_time)
          expect(stat[:recent_ride_totals][:elapsed_time]).to be_an Integer
          expect(stat[:recent_ride_totals]).to have_key(:elevation_gain)
          expect(stat[:recent_ride_totals][:elevation_gain]).to be_an Float
        end
      end
    end
  end
end
