require 'rails_helper'

describe ProfileQuery do

  context 'initialize' do
    it 'exists with correct token' do
      user = create(:user)
      subject = ProfileQuery.new(user)
      expect(subject).to be_an ProfileQuery
      expect(subject.token).to eq(ENV['strava_my_token'])
    end
  end

  context 'instance methods' do
    context '#profile' do
      it 'returns profile information' do
        VCR.use_cassette("getting-profile-information") do
          user = create(:user)
          subject = ProfileQuery.new(user)
          expect(subject.profile_information).to be_a Profile
        end
      end
    end
  end
end
