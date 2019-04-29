module Director
  class EventsController < BaseController
    before_action :load_event, only: [:show, :edit, :update, :destroy]

    def index
      @events = Event.all
    end

    def show
    end

    def new
      @event = Event.new
    end

    def edit
    end

    def create
      if  event_params[:start_date].to_time <= event_params[:end_date].to_time
        if event_params[:start_date] >= DateTime.current
          # binding.pry
          user_event = Event.where(doctor_id: event_params[:doctor_id].to_i).order(end_date: :asc).last
          if user_event.nil? || user_event.end_date <= event_params[:start_date]
            @event = Event.new event_params
            if @event.save
              flash[:success] = "Successfully"
              redirect_to director_events_path
            else
              flash[:error] = "Create fail!"
              redirect_to director_events_path
            end
          else
            flash[:error] = "Bạn đã tạo lịch cho bác sĩ này rồi"
            redirect_to director_events_path
          end
        else
          flash[:error] = "Không được tạo lịch ở quá khứ!"
          redirect_to director_events_path
        end
      else
        flash[:error] = "Thời gian kết thúc phải lớn hơn thời gian bắt đầu!"
        redirect_to director_events_path
      end
    end

    def update
      if  event_params[:start_date] <= event_params[:end_date]
        if event_params[:start_date] >= DateTime.current
          if @event.update_attributes event_params
            flash[:success] = "Update success!"
            redirect_to director_events_path, turbolinks: false
          else
            flash[:error] = "Update fail!"
            redirect_to director_events_path, turbolinks: false
          end
        else
          flash[:error] = "Không được tạo lịch ở quá khứ!"
          redirect_to director_events_path
        end
      else
        flash[:error] = "Thời gian kết thúc phải lớn hơn thời gian bắt đầu!"
        redirect_to director_events_path
      end
    end

    def destroy
      @event.destroy
      flash[:notice] = "Xóa thành công!"
      redirect_to director_events_path
    end

    private
    def load_event
      @event = Event.find_by id: params[:id]
    end

    def event_params
      params.require(:event).permit(:doctor_id, :start_date, :end_date, :nurse_id)
    end
  end

end
