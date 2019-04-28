module Nurse
class BookingsController < BaseController
  before_action :authenticate_user!
  before_action :load_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.joins_event1(current_user.id)
  end

  def show
    @events = Event.where nurse_id: current_user.id
  end

  private

  def load_booking
    @booking = Booking.find_by id: params[:id]
  end
end
end
