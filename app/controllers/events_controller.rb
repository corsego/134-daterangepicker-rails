class EventsController < ApplicationController
  def index
    if params[:start_date_between]
      # params[:start_date_between] = "06/01/2023 - 06/30/2023"
      starts = params[:start_date_between].split(" - ").first
      starts_for_select = Date.strptime(starts, "%m/%d/%Y")
      ends = params[:start_date_between].split(" - ").second
      ends_for_select = Date.strptime(ends, "%m/%d/%Y")
      @events = Event.where(start_date: starts_for_select..ends_for_select).order(start_date: :desc)
    else
      @events = Event.all.order(start_date: :desc)
    end
  end
end
