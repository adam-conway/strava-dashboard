class Stat
  attr_reader :biggest_ride_distance,
              :biggest_climb_elevation_gain,
              :recent_number_of_rides,
              :recent_distance_ridden,
              :recent_bike_moving_time,
              :recent_bike_elapsed_time,
              :recent_bike_elevation_gain,
              :recent_number_of_runs,
              :recent_distance_ran,
              :recent_run_moving_time,
              :recent_run_elapsed_time,
              :recent_run_elevation_gain,
              :recent_number_of_swims,
              :recent_distance_swam,
              :recent_swim_moving_time,
              :recent_swim_elapsed_time,
              :ytd_number_of_rides,
              :ytd_distance_ridden,
              :ytd_bike_moving_time,
              :ytd_bike_elapsed_time,
              :ytd_bike_elevation_gain,
              :ytd_number_of_runs,
              :ytd_distance_ran,
              :ytd_run_moving_time,
              :ytd_run_elapsed_time,
              :ytd_run_elevation_gain,
              :ytd_number_of_swims,
              :ytd_distance_swam,
              :ytd_swim_moving_time,
              :ytd_swim_elapsed_time,
              :all_time_number_of_rides,
              :all_time_distance_ridden,
              :all_time_bike_moving_time,
              :all_time_bike_elapsed_time,
              :all_time_bike_elevation_gain,
              :all_time_number_of_runs,
              :all_time_distance_ran,
              :all_time_run_moving_time,
              :all_time_run_elapsed_time,
              :all_time_run_elevation_gain,
              :all_time_number_of_swims,
              :all_time_distance_swam,
              :all_time_swim_moving_time,
              :all_time_swim_elapsed_time

  def initialize(raw_stat_data)
    @biggest_ride_distance = raw_stat_data[:biggest_ride_distance]
    @biggest_climb_elevation_gain = raw_stat_data[:biggest_climb_elevation_gain]
    @recent_number_of_rides = raw_stat_data[:recent_ride_totals][:count]
    @recent_distance_ridden = raw_stat_data[:recent_ride_totals][:distance]
    @recent_bike_moving_time = raw_stat_data[:recent_ride_totals][:moving_time]
    @recent_bike_elapsed_time = raw_stat_data[:recent_ride_totals][:elapsed_time]
    @recent_bike_elevation_gain = raw_stat_data[:recent_ride_totals][:elevation_gain]
    @recent_number_of_runs = raw_stat_data[:recent_run_totals][:count]
    @recent_distance_ran = raw_stat_data[:recent_run_totals][:distance]
    @recent_run_moving_time = raw_stat_data[:recent_run_totals][:moving_time]
    @recent_run_elapsed_time = raw_stat_data[:recent_run_totals][:elapsed_time]
    @recent_run_elevation_gain = raw_stat_data[:recent_run_totals][:elevation_gain]
    @recent_number_of_swims = raw_stat_data[:recent_swim_totals][:count]
    @recent_distance_swam = raw_stat_data[:recent_swim_totals][:distance]
    @recent_swim_moving_time = raw_stat_data[:recent_swim_totals][:moving_time]
    @recent_swim_elapsed_time = raw_stat_data[:recent_swim_totals][:elapsed_time]
    @ytd_number_of_rides = raw_stat_data[:ytd_ride_totals][:count]
    @ytd_distance_ridden = raw_stat_data[:ytd_ride_totals][:distance]
    @ytd_bike_moving_time = raw_stat_data[:ytd_ride_totals][:moving_time]
    @ytd_bike_elapsed_time = raw_stat_data[:ytd_ride_totals][:elapsed_time]
    @ytd_bike_elevation_gain = raw_stat_data[:ytd_ride_totals][:elevation_gain]
    @ytd_number_of_runs = raw_stat_data[:ytd_run_totals][:count]
    @ytd_distance_ran = raw_stat_data[:ytd_run_totals][:distance]
    @ytd_run_moving_time = raw_stat_data[:ytd_run_totals][:moving_time]
    @ytd_run_elapsed_time = raw_stat_data[:ytd_run_totals][:elapsed_time]
    @ytd_run_elevation_gain = raw_stat_data[:ytd_run_totals][:elevation_gain]
    @ytd_number_of_swims = raw_stat_data[:ytd_swim_totals][:count]
    @ytd_distance_swam = raw_stat_data[:ytd_swim_totals][:distance]
    @ytd_swim_moving_time = raw_stat_data[:ytd_swim_totals][:moving_time]
    @ytd_swim_elapsed_time = raw_stat_data[:ytd_swim_totals][:elapsed_time]
    @all_time_number_of_rides = raw_stat_data[:all_ride_totals][:count]
    @all_time_distance_ridden = raw_stat_data[:all_ride_totals][:distance]
    @all_time_bike_moving_time = raw_stat_data[:all_ride_totals][:moving_time]
    @all_time_bike_elapsed_time = raw_stat_data[:all_ride_totals][:elapsed_time]
    @all_time_bike_elevation_gain = raw_stat_data[:all_ride_totals][:elevation_gain]
    @all_time_number_of_runs = raw_stat_data[:all_run_totals][:count]
    @all_time_distance_ran = raw_stat_data[:all_run_totals][:distance]
    @all_time_run_moving_time = raw_stat_data[:all_run_totals][:moving_time]
    @all_time_run_elapsed_time = raw_stat_data[:all_run_totals][:elapsed_time]
    @all_time_run_elevation_gain = raw_stat_data[:all_run_totals][:elevation_gain]
    @all_time_number_of_swims = raw_stat_data[:all_swim_totals][:count]
    @all_time_distance_swam = raw_stat_data[:all_swim_totals][:distance]
    @all_time_swim_moving_time = raw_stat_data[:all_swim_totals][:moving_time]
    @all_time_swim_elapsed_time = raw_stat_data[:all_swim_totals][:elapsed_time]
  end
end
