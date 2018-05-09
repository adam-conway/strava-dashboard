class Activity
  attr_reader :name, :distance, :moving_time, :elapsed_time, :start_date
  def initialize(raw_activity_data)
    @name = raw_activity_data[:name]
    @distance = raw_activity_data[:distance]
    @moving_time = raw_activity_data[:moving_time]
    @elapsed_time = raw_activity_data[:elapsed_time]
    @start_date = raw_activity_data[:start_date]
  end
end
