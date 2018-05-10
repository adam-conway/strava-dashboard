class ProfileQuery
  attr_reader :token

  def initialize(current_user)
    @token = current_user.token
  end

  def profile_information
    raw_profile_info = service.raw_profile_data
    Profile.new(raw_profile_info)
  end

  private

    def service
      @service ||= ProfileService.new(token)
    end
end
