class StatQuery
  attr_reader :current_user

  def initialize(current_user)
    @current_user = current_user
  end

  def stat_information
    raw_stat_info = service.raw_stat_data
    Stat.new(raw_stat_info)
  end

  private

    def service
      @service ||= StatService.new(current_user)
    end
end
