class DocumentsController < ApplicationController
  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to root_path, notice: "Document Created"
    else
      render :new
    end
  end

  def update
    @role = Role.find_by id: params[:id]
  end

  def comment
    @role = Role.find_by id: params[:id]
  end

  def index
    @documents = Document.all
  end

  private

  def document_params
    params.require(:document).permit(:users, :status, :title, :year,  :attorney_notes, :client_notes, :date, :description, :paralegal_notes,  :user_ids => [] )
  end
end
