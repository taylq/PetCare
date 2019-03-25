class BookingsController < ApplicationController
  before_action :load_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
    @events = Event.all
  end

  def show
  end

  def new
    event = Event.where(doctor_id: params[:doctor_id].to_i).where("events.start_date < ? and events.end_date > ? ", Time.at(params[:start].to_f/1000), Time.at(params[:end].to_f/1000))
    event.each do |e|
      @booking = Booking.new event_id: e.id
    end
  end

  def edit
  end

  def create
    if  booking_params[:start_time] <= booking_params[:end_time]
      if booking_params[:start_time] >= DateTime.current
          @booking = Booking.new booking_params
        binding.pry
        if @booking.save
            flash[:success] = "Successfully"
            redirect_to bookings_path
          else
            flash[:error] = "Create fail!"
            redirect_to bookings_path
          end
      else
        flash[:error] = "Không được tạo lịch ở quá khứ!"
        redirect_to bookings_path
      end
    else
      flash[:error] = "Thời gian kết thúc phải lớn hơn thời gian bắt đầu!"
      redirect_to bookings_path
    end
  end

  def update
    if  booking_params[:start_time] <= booking_params[:end_time]
      if booking_params[:start_time] >= DateTime.current
        if @booking.update_attributes booking_params
          flash[:success] = "Update success!"
          redirect_to bookings_path, turbolinks: false
        else
          flash[:error] = "Update fail!"
          redirect_to bookings_path, turbolinks: false
        end
      else
        flash[:error] = "Không được tạo lịch ở quá khứ!"
        redirect_to bookings_path
      end
    else
      flash[:error] = "Thời gian kết thúc phải lớn hơn thời gian bắt đầu!"
      redirect_to bookings_path
    end
  end

  def destroy
    @booking.destroy
    flash[:notice] = "Xóa thành công!"
    redirect_to bookings_path
  end

  private
  def load_booking
    @booking = Booking.find_by id: params[:id]
  end

  def booking_params
    params.require(:booking).permit(:user_id, :event_id, :start_time, :end_time)
  end
end
