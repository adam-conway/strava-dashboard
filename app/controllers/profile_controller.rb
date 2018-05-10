class ProfileController < ApplicationController
  def index
    @profile = ProfileQuery.new(current_user).profile_information
    @stats = StatQuery.new(current_user).stat_information
  end
end
