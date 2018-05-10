class StatService
  def initialize(current_user)
    @token = current_user.token
    @uid = current_user.uid
  end

  def raw_stat_data 
    JSON.parse(query.body, symbolize_names: true)
  end
  private
    attr_reader :token, :uid

    def query
      Faraday.get("https://www.strava.com/api/v3/athletes/#{uid}/stats?access_token=#{token}")
    end

end
