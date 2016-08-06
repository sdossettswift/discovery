class DocumentsController < ApplicationController
  before_action do
    require_login!
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to documents_path, notice: "Document Created"
    else
      render :new
    end
  end

  def update
    @document = Document.find_by id: params[:id]
  end

  def index
    @documents = Document.all
  end

  def show
    @document = Document.find_by id: params[:id]
  end


  private

  def document_params
    params.require(:document).permit(:document, :users, :status, :title, :year,  :attorney_notes, :client_notes, :date, :description, :paralegal_notes,  :user_ids => [] )
  end
end
