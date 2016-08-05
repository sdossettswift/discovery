class EventsController < ApplicationController
  before_action do
    require_login!
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path, notice: "Event Created"
    else
      render :new
    end
  end

  def update
    @event = Event.find_by id: params[:id]
  end

  def comment
    @event = Event.find_by id: params[:id]
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by id: params[:id]

  end

  def timeline
    @events = Event.all
  end

  private

  def event_params
    params.require(:event).permit(:caption, :credit, :day, :headline, :hour,  :minute, :month, :text, :thumbnail, :url, :date,  :user_ids => [] )
  end
end
