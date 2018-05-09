class ActivityService
  def initialize(token, limit)
    @token = token
    @limit = limit
  end

  def raw_activity_data
    JSON.parse(query.body, symbolize_names: true)
  end
  private
    attr_reader :limit, :token

    def query
      Faraday.get("https://www.strava.com/api/v3/athlete/activities?page1=&per_page=#{limit}&access_token=#{token}")
    end

end
