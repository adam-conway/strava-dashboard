require 'rails_helper'

describe StatQuery do

  context 'initialize' do
    it 'exists with correct token' do
      user = create(:user)
      subject = StatQuery.new(user)
      expect(subject).to be_an StatQuery
      expect(subject.current_user.token).to eq(ENV['strava_my_token'])
    end
  end

  context 'instance methods' do
    context '#stats' do
      it 'returns stat information' do
        VCR.use_cassette("getting-stat-information") do
          user = create(:user)
          subject = StatQuery.new(user)
          expect(subject.stat_information).to be_a Stat
        end
      end
    end
  end
end
