class Api::MatterEventsController < ApplicationController
  protect_from_forgery with: :null_session

  before_action do
    request.format = :json
  end

  def new
    @matter = Matter.find_by(params[:matter_id])
    @event = @matter.events.create(event_params)
  end

  def create
    @matter = Matter.find_by(params[:matter_id])
    @event = @matter.events.create(event_params)
    if @event.save
        render :show, status: 200 #created
      else
        render json: {errors: @event.errors}, status: 422 #error
      end
    end

  def index
    @matter = Matter.find(params[:matter_id])
    @events = @matter.events.all
  end

  def show
    @matter = Matter.find(params[:matter_id])
    @event = @matter.matter_event.find_by(params[:id])
  end


  def timeline
    @matter = Matter.find_by(params[:matter_id])
    @events = @matter.events.all
  end

  private

  def event_params
    params.require(:event).permit(:caption, :credit, :day, :headline, :hour,  :minute, :month, :text, :thumbnail, :url, :date,  :user_ids => [] )
  end


end
