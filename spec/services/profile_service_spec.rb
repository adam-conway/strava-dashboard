require 'rails_helper'

describe ProfileService do
  subject { ProfileService.new(ENV['strava_my_token']) }

  context 'initialize' do
    it 'exists' do
      expect(subject).to be_an ProfileService
    end
  end

  context 'instance methods' do
    context '#raw_profile_data' do
      it 'returns hash of profile data' do
        VCR.use_cassette('profile-service') do
          profile_data = subject.raw_profile_data

          expect(profile_data).to be_an Hash

          expect(profile_data).to have_key(:id)
          expect(profile_data[:id]).to be_an Integer

          expect(profile_data).to have_key(:firstname)
          expect(profile_data[:firstname]).to be_a String

          expect(profile_data).to have_key(:lastname)
          expect(profile_data[:lastname]).to be_a String

          expect(profile_data).to have_key(:city)
          expect(profile_data[:city]).to be_a String

          expect(profile_data).to have_key(:state)
          expect(profile_data[:state]).to be_a String
        end
      end
    end
  end
end
