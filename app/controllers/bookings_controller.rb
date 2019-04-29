class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all

  end

  def show
    @events = Event.all
  end

  def new
    # binding.pry
    event = Event.where(doctor_id: params[:doctor_id].to_i).where("events.start_date <= ? and events.end_date >= ? ", Time.zone.local_to_utc(Time.at(params[:start].to_f/1000)).strftime('%Y-%m-%d %H:%M'), Time.zone.local_to_utc(Time.at(params[:end].to_f/1000)).strftime('%Y-%m-%d %H:%M'))
    # event = Event.where(doctor_id: params[:doctor_id].to_i).where("events.start_date < ? and events.end_date > ? ", '26-03-2019 09:30', '26-03-2019 10:00')
    unless event.empty?
      event.each do |e|
        @booking = Booking.new(event_id: e.id)
      end
    else
      @booking = Booking.new
    end
  end

  def edit
  end

  def create
    # binding.pry
    # booking_params[:start_time] = booking_params[:start_time].to_time
    # booking_params[:end_time] = booking_params[:end_time].to_time
    # if Booking.where(event_id: booking_params[:event_id].to_i).where("bookings.start_time::time <= ? and bookings.end_time::time >= ?", booking_params[:start_time].to_time, booking_params[:end_time].to_time).blank?
    if Booking.where(event_id: booking_params[:event_id].to_i).where("bookings.start_time <= ? and bookings.end_time >= ?", booking_params[:start_time].to_time, booking_params[:end_time].to_time).blank?
      if  booking_params[:start_time] <= booking_params[:end_time]
        if booking_params[:start_time].to_time >= DateTime.current
          unless booking_params[:event_id].empty?
            @booking = Booking.new booking_params
            if @booking.save
              flash[:success] = "Successfully"
            else
              flash[:error] = "Create fail!"
            end
          else
            flash[:error] = "Bác sĩ không có lịch trong khung giờ này!"
          end
        else
          flash[:error] = "Không được tạo lịch ở quá khứ!"
        end
      else
        flash[:error] = "Thời gian kết thúc phải lớn hơn thời gian bắt đầu!"
      end
    else
      flash[:error] = "Khung giờ này đã được đặt!"
    end
    redirect_to bookings_path
  end

  def destroy
    if current_user.id == @booking.user_id
      @booking.destroy
      flash[:notice] = "Xóa thành công!"
    else
      flash[:error] = "Không thể xóa lịch của người khác!"
    end
    redirect_to bookings_path
  end

  private
  def load_booking
    @booking = Booking.find_by id: params[:id]
  end

  def booking_params
    params.require(:booking).permit(:user_id, :event_id, :start_time, :end_time, :pet_id, :note)
  end
end
