class ProfileService
  def initialize(token)
    @token = token
  end

  def raw_profile_data
    JSON.parse(query.body, symbolize_names: true)
  end

  private
    attr_reader :token

    def query
      Faraday.get("https://www.strava.com/api/v3/athlete/activities?access_token=#{token}")
    end

end
