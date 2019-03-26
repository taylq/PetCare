class EventsController < ApplicationController
  def index
    binding.pry
    @events = Event.all
  end
end