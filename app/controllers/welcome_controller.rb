class WelcomeController < ApplicationController
  def index
    @activities = ActivityQuery.new(current_user) if current_user
  end
end
