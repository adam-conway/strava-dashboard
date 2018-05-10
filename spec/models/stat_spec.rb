require 'spec_helper'
require './app/models/stat.rb'

describe Stat do
  let(:attributes) {
    {
      biggest_ride_distance: 122334,
      biggest_climb_elevation_gain: 3455,
      recent_ride_totals: {
        count: 13,
        distance: 127467.8994140625,
        moving_time: 22052,
        elapsed_time: 23527,
        elevation_gain: 520,
      },
      recent_run_totals: {
        count: 0,
        distance: 0,
        moving_time: 0,
        elapsed_time: 0,
        elevation_gain: 0,
        achievement_count: 0
      },
      recent_swim_totals: {
        count: 0,
        distance: 0,
        moving_time: 0,
        elapsed_time: 0,
        elevation_gain: 0,
        achievement_count: 0
      },
      ytd_ride_totals: {
        count: 37,
        distance: 471820,
        moving_time: 81940,
        elapsed_time: 100369,
        elevation_gain: 3717
      },
      ytd_run_totals: {
        count: 0,
        distance: 0,
        moving_time: 0,
        elapsed_time: 0,
        elevation_gain: 0
      },
      ytd_swim_totals: {
        count: 0,
        distance: 0,
        moving_time: 0,
        elapsed_time: 0,
        elevation_gain: 0
      },
      all_ride_totals: {
        count: 103,
        distance: 3247807,
        moving_time: 514399,
        elapsed_time: 641211,
        elevation_gain: 32764
      },
      all_run_totals: {
        count: 0,
        distance: 0,
        moving_time: 0,
        elapsed_time: 0,
        elevation_gain: 0
      },
      all_swim_totals: {
        count: 0,
        distance: 0,
        moving_time: 0,
        elapsed_time: 0,
        elevation_gain: 0
      }
    }
  }
  subject { Stat.new(attributes) }
  context 'initialize' do
    it 'exists with valid attributes' do
      expect(subject.biggest_ride_distance).to eq(122334)
      expect(subject.biggest_climb_elevation_gain).to eq(3455)
      expect(subject.recent_number_of_rides).to eq(13)
      expect(subject.recent_distance_ridden).to eq(127467.8994140625)
      expect(subject.recent_bike_moving_time).to eq(22052)
      expect(subject.recent_bike_elapsed_time).to eq(23527)
      expect(subject.recent_bike_elevation_gain).to eq(520)
    end
  end
end
