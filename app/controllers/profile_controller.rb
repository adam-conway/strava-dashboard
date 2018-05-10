class ProfileController < ApplicationController
  def index
    @profile = ProfileQuery.new(current_user).profile_information
  end
end
