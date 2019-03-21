module Director
  class EventsController < BaseController
    before_action :load_event, only: [:show, :edit, :update, :destroy]

    def index
      @events = Event.all
    end

    def show
    end

    def new
      @event = Event.new start_date: Time.at(params[:_].to_i/1000), end_date: Time.at(params[:_].to_i/1000)
    end

    def edit
    end

    def create
      @event = Event.new event_params
      @event.save
    end

    def update
      @event.update_attributes event_params
    end

    def destroy
      @event.destroy
    end

    private
    def load_event
      @event = Event.find_by id: params[:id]
    end

    def event_params
      params.require(:event).permit(:doctor_id, :start_date, :end_date)
    end
  end
end