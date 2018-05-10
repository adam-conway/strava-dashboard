require 'spec_helper'
require './app/models/activity.rb'

describe Activity do
  let(:attributes) {
    {
      name: "Morning Ride",
      distance: 3455,
      moving_time: 111,
      elapsed_time: 222,
      start_date: "2017-11-14T02:30:05Z"
    }
  }
  subject { Activity.new(attributes) }
  context 'initialize' do
    it 'exists with valid attributes' do
      expect(subject.name).to eq("Morning Ride")
      expect(subject.distance).to eq(3455)
      expect(subject.moving_time).to eq(111)
      expect(subject.elapsed_time).to eq(222)
      expect(subject.start_date).to eq("2017-11-14T02:30:05Z")
    end
  end
end
