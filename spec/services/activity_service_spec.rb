require 'rails_helper'

describe ActivityService do
  subject { ActivityService.new(ENV['strava_my_token'], 12) }

  context 'initialize' do
    it 'exists' do
      expect(subject).to be_an ActivityService
    end
  end

  context 'instance methods' do
    context '#raw_activity_data' do
      it 'returns array of activity hashes' do
        VCR.use_cassette('activity-service') do
          activities = subject.raw_activity_data
          activity = activities.first
          expect(activities).to be_an Array
          expect(activities.count).to eq(12)

          expect(activity).to have_key(:name)
          expect(activity[:name]).to be_a String

          expect(activity).to have_key(:distance)
          expect(activity[:distance]).to be_a Float

          expect(activity).to have_key(:moving_time)
          expect(activity[:moving_time]).to be_a Integer

          expect(activity).to have_key(:elapsed_time)
          expect(activity[:elapsed_time]).to be_a Integer

          expect(activity).to have_key(:start_date)
          expect(activity[:start_date]).to be_a String
        end
      end
    end
  end
end
