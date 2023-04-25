class EventsController < ApplicationController
  def index
    @events = Event.all.order(start_date: :desc)
  end
end
