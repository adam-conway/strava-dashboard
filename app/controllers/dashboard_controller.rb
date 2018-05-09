class DashboardController < ApplicationController
  def index
    @activity_query = ActivityQuery.new(current_user) if current_user
  end
end
