class DocsController < ApplicationController
    before_action do
      require_login!
    end

    def new
      @matter = Matter.find(params[:matter_id])
      @doc = @matter.docs.create(document_params)
    end

    def create
      @matter = Matter.find(params[:matter_id])
      @doc = @matter.docs.create(document_params)
      if @doc.save
        redirect_to matter_path(@matter), notice: "Document Created"
      else
        render :new
      end
    end

    def update
      @doc = Doc.find_by id: params[:id]
    end

    def index
      @matter = Matter.find(params[:matter_id])
      @docs = @matter.docs.all
    end

    def show
      @matter = Matter.find(params[:matter_id])
      @doc = @matter.docs.find(params[:id])
      @docs = @matter.docs.all
    end


    private

    def document_params
      params.require(:doc).permit(:doc, :matter_id, :users, :status, :title, :year,  :attorney_notes, :client_notes, :date, :description, :paralegal_notes, :doc_id,  :user_ids => [] )
    end

end
