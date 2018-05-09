class ActivityQuery
  def initialize(current_user)
    @token = current_user.token
  end

  def last_ten
    response = Faraday.get("https://www.strava.com/api/v3/athlete/activities?page1=&per_page=10&access_token=#{token}")
    raw_activity_data = JSON.parse(response.body, symbolize_names: true)
    raw_activity_data.map do |raw_activity|
      Activity.new(raw_activity)
    end
  end

  private
    attr_reader :token
end
