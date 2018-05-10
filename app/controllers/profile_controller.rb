class ProfileController < ApplicationController
  def index
    @profile_query = ProfileQuery.new(current_user)
  end
end
