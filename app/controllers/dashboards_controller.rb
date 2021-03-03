class DashboardsController < ApplicationController
  def show
    @bookings = current_user.bookings
    @mentors = current_user.mentors
  end
end
