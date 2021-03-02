class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @mentor = Mentor.find(params[:mentor_id])
    @booking.mentor = @mentor
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def index
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def booking_params
  params.require(:booking).permit(:start_date, :end_date, :price)
  end
end
