require 'spec_helper'
require './app/models/profile.rb'

describe Profile do
  let(:attributes) {
    {
      first_name: "Waspin",
      last_name: "Conway",
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
      expect(subject.created_at).to eq("2017-11-14T02:30:05Z")
      expect(subject.friend_count).to eq(15)
      expect(subject.follower_count).to eq(10)
    end
  end
end
