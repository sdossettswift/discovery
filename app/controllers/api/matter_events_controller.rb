class Api::MatterEventsController < ApplicationController
  protect_from_forgery with: :null_session

  before_action do
    request.format = :json
  end

  def new
    @matter = Matter.find_by(params[:matter_id])
    @matter_event = @matter.matter_events.create(matter_event_params)
  end

  def create
    @matter = Matter.find_by(params[:matter_id])
    @matter_event = @matter.matter_events.create(matter_event_params)
    if @matter_event.save
        render :show, status: 200 #created
      else
        render json: {errors: @event.errors}, status: 422 #error
      end
    end

  def index
    @matter = Matter.find(params[:matter_id])
    @matter_events = @matter.matter_events.all
  end

  def show
    @matter = Matter.find(params[:matter_id])
    @matter_events = @matter.matter_events.all
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
