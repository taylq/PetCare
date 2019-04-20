module Doctor
  class EventsController < BaseController
    before_action :load_event, only: [:show, :edit, :update, :destroy]

    def index
      @events = Event.where doctor_id: current_user.id
    end

    def show
    end

    private

    def load_event
      @event = Event.find_by id: params[:id]
    end
  end
end
