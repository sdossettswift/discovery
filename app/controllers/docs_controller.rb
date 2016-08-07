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
        redirect_to documents_path, notice: "Document Created"
      else
        render :new
      end
    end

    def update
      @doc = Doc.find_by id: params[:id]
    end

    def index
      @docs = Doc.all
    end

    def show
      @doc = Doc.find_by id: params[:id]
    end


    private

    def document_params
      params.require(:doc).permit(:matter_id, :users, :status, :title, :year,  :attorney_notes, :client_notes, :date, :description, :paralegal_notes,  :user_ids => [] )
    end

end
