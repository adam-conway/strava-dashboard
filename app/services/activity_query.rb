class ActivityQuery
  def initialize(current_user, number_requested = 10)
    @token = current_user.token
    @number_requested = number_requested
  end

  def activities
    raw_activities = service.raw_activity_data
    raw_activities.map do |raw_activity|
      Activity.new(raw_activity)
    end
  end

  private
    attr_reader :token, :number_requested

    def service
      @service ||= ActivityService.new(number_requested, token)
    end
end
