class EventsController < ApplicationController
  before_action do
    require_login!
  end


    def new
      @matter = Matter.find(params[:matter_id])
      @event = @matter.events.create(event_params)
    end


    def create
      @matter = Matter.find(params[:matter_id])
      @event = @matter.events.create(event_params)
      if @event.save
        redirect_to matter_path(@matter), notice: "Event Added"
      else
        render :new
      end
    end

  def index
    @matter = Matter.find(params[:matter_id])
    @events = @matter.events.all
  end

  def show
    @matter = Matter.find(params[:matter_id])
    @events = @matter.events.find(params[:id])
  end

    def timeline
      @matter = Matter.find(params[:matter_id])
      @events = @matter.events.all
    end


  private

  def event_params
    params.require(:event).permit(:caption, :minute, :year, :credit, :day, :headline, :hour,  :minute, :month, :text, :thumbnail, :url, :date,  :user_ids => [] )
  end
end
