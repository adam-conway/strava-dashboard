require 'rails_helper'

describe ActivityQuery do

  context 'initialize' do
    it 'exists with correct token and number of activites requested' do
      user = create(:user)
      subject = ActivityQuery.new(user, 5)
      expect(subject).to be_an ActivityQuery
      expect(subject.token).to eq(ENV['strava_my_token'])
      expect(subject.number_requested).to eq(5)
    end
  end

  context 'instance methods' do
    context '#activities' do
      it 'returns a collection of activities' do
        VCR.use_cassette("Seeing-five-most-recent-activities") do
          user = create(:user)
          subject = ActivityQuery.new(user, 5)
          expect(subject.activities.count).to eq(5)
          expect(subject.activities.first).to be_an Activity
        end
      end
    end
  end
end
