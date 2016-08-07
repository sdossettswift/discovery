class Api::MattersController < ApplicationController
  protect_from_forgery with: :null_session

  before_action do
    request.format = :json
  end

    def new
      @matter = Matter.new
    end

    def create
      @matter = Matter.create(matter_params)
      if @matter.save
        redirect_to root_path, notice: "Matter Created"
      else
        render :new
      end
    end

    def update
    end

    def index
      @matters =Matter.all
    end

    def show
      @matter =Matter.find_by id: params[:id]
    end

    private

    def matter_params
      params.require(:matter).permit(:users,:kind, :description, :year, :cause_number, :court, :judge, :opposing_party, :opposing_counsel, :status, :user_ids => [] )
    end
  end
