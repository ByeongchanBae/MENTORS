class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
    @mentor = Mentor.find(params[:mentor_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @mentor = Mentor.find(params[:mentor_id])
    @booking.price = @mentor.price * @booking.num_of_days
    @booking.mentor = @mentor
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end
end
