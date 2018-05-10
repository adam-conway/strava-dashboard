require 'date'

class Profile
  attr_reader :first_name, :last_name, :city, :state, :created_at, :friend_count, :follower_count
  def initialize(raw_profile_data)
    @first_name = raw_profile_data[:firstname]
    @last_name = raw_profile_data[:lastname]
    @city = raw_profile_data[:city]
    @state = raw_profile_data[:state]
    @created_at = parse_time_stamp(raw_profile_data[:created_at])
    @friend_count = raw_profile_data[:friend_count]
    @follower_count = raw_profile_data[:follower_count]
  end

  def parse_time_stamp(timestamp)
    DateTime.parse(timestamp).strftime('%B %e, %Y')
  end
end
