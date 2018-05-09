require 'rails_helper'

describe ActivityQuery do
  user = create(:user)
  subject { ActivityQuery.new(user, 5) }

  context 'initialize' do
    it 'exists with correct token and number of activites requested' do
      expect(subject).to be_an ActivityQuery
      expect(subject.token).to eq(ENV['strava_my_token'])
      expect(subject.number_requested).to eq(ENV['strava_my_token'])
    end
  end

  # context 'instance methods' do
  #   context '#members' do
  #     it 'returns a collection of members' do
  #       expect(subject.members.count).to eq(7)
  #       expect(subject.members.first).to be_a Member
  #     end
  #   end
  # end
end
