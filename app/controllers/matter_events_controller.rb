class MatterEventsController < ApplicationController

  before_action do
    require_login!
  end

    def new
      @matter = Matter.matter_id(params[:matter_id])
      @matter_event = @matter.matter_events.create(matter_event_params)
    end

    def create
      @matter = Matter.matter_id(params[:matter_id])
      @matter_event = @matter.matter_events.create(matter_event_params)
      if @matter_event.save
        redirect_to matter_path(@matter), notice: "Event Added"
      else
        render :new
      end
    end


    def timeline
      @matter = Matter.find_by(params[:matter_id])
      @matter_events = @matter.matter_events.all
    end

    private

    def matter_event_params
      params.require(:matter_event).permit(:caption, :credit, :day, :headline, :hour,  :minute, :month, :text, :thumbnail, :url, :date,  :user_ids => [] )
    end


end
