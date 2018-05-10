require 'spec_helper'
require './app/models/profile.rb'

describe Profile do
  let(:attributes) {
    {
      firstname: "Waspin",
      lastname: "Conway",
      city: "Oakland",
      state: "CA",
      created_at: "2017-11-14T02:30:05Z",
      friend_count: 15,
      follower_count: 10,
    }
  }
  subject { Profile.new(attributes) }
  context 'initialize' do
    it 'exists with valid attributes' do
      expect(subject.first_name).to eq("Waspin")
      expect(subject.last_name).to eq("Conway")
      expect(subject.city).to eq("Oakland")
      expect(subject.state).to eq("CA")
      expect(subject.created_at).to eq("November 14, 2017")
      expect(subject.friend_count).to eq(15)
      expect(subject.follower_count).to eq(10)
    end
  end
end
